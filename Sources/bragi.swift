import ArgumentParser
import Foundation

@main
struct Bragi: ParsableCommand {
  static let configuration = CommandConfiguration(
    abstract: "A tool for generating type-safe localization strings",
    version: "1.0.0"
  )

  @Option(name: .shortAndLong, help: "Path to .lproj directory")
  var path: String

  @Option(name: .shortAndLong, help: "Path where generated Swift file should be created")
  var output: String

  mutating func run() throws {
    let fileManager = FileManager.default
    let lprojPath = (path as NSString).expandingTildeInPath
    let outputPath = (output as NSString).expandingTildeInPath

    var isDirectory: ObjCBool = false
    guard fileManager.fileExists(atPath: lprojPath, isDirectory: &isDirectory),
          isDirectory.boolValue,
          lprojPath.hasSuffix(".lproj")
    else {
      throw ValidationError("Path must be a valid .lproj directory: \(lprojPath)")
    }

    let parser = LprojParser()
    let translations = try parser.parseDirectory(at: lprojPath)

    let generator = OutputGenerator()
    let content = generator.generate(translations: translations)

    try content.write(toFile: outputPath, atomically: true, encoding: .utf8)

    print("Successfully generated localizations to: \(outputPath)")
  }
}
