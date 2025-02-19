import ArgumentParser
import Foundation

@main
struct Bragi: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "A tool for generating type-safe localization strings",
        version: "1.0.0"
    )
    
    @Option(name: .long, help: "Path to the configuration file")
    var config: String = ".bragi.yml"
    
    mutating func run() throws {
        let fileManager = FileManager.default
        let configPath = (config as NSString).expandingTildeInPath
        
        guard fileManager.fileExists(atPath: configPath) else {
            throw ValidationError("Configuration file not found at path: \(configPath)")
        }
        
        // TODO: Parse configuration file
        print("Configuration file found at: \(configPath)")
    }
}
