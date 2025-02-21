import Foundation

struct LprojParser {
  func parseDirectory(at path: String) throws -> [Translation] {
    let fileManager = FileManager.default
    var translations: [Translation] = []

    let contents = try fileManager.contentsOfDirectory(atPath: path)
    let stringsFiles = contents.filter { $0.hasSuffix(".strings") }
    let stringsDictFiles = contents.filter { $0.hasSuffix(".stringsdict") }

    for fileName in stringsFiles {
      let filePath = (path as NSString).appendingPathComponent(fileName)
      guard let dict = NSDictionary(contentsOfFile: filePath) as? [String: String] else {
        throw ParsingError.invalidFileFormat(path: filePath)
      }
      let table = (fileName as NSString).deletingPathExtension
      let fileTranslations = dict.map { createSingularTranslation(key: $0, value: $1, table: table) }
      translations.append(contentsOf: fileTranslations)
    }

    for fileName in stringsDictFiles {
      let filePath = (path as NSString).appendingPathComponent(fileName)
      guard let dict = NSDictionary(contentsOfFile: filePath) as? [String: Any] else {
        throw ParsingError.invalidFileFormat(path: filePath)
      }
      let table = (fileName as NSString).deletingPathExtension
      let fileTranslations = try dict.compactMap { key, value -> Translation? in
        guard let pluralDict = value as? [String: Any] else {
          throw ParsingError.invalidPluralDictionary(key: key, missingKeys: ["root dictionary"])
        }
        return try createPluralTranslation(key: key, dict: pluralDict, table: table)
      }
      translations.append(contentsOf: fileTranslations)
    }

    return translations.sorted { lhs, rhs in
      compareKeys(lhs.key, rhs.key)
    }
  }

  private func createSingularTranslation(key: String, value: String, table: String) -> Translation {
    .singular(SingularTranslationData(key: key, value: value, table: table))
  }

  private func createPluralTranslation(key: String, dict: [String: Any], table: String) throws -> Translation {
    if dict["NSStringLocalizedFormatKey"] == nil {
      throw ParsingError.invalidPluralDictionary(key: key, missingKeys: ["NSStringLocalizedFormatKey"])
    }

    guard let formatString = dict["NSStringLocalizedFormatKey"] as? String else {
      throw ParsingError.invalidPluralDictionary(key: key, missingKeys: ["NSStringLocalizedFormatKey (invalid type)"])
    }

    var variables: [String: PluralVariable] = [:]

    for (varName, varDict) in dict {
      guard varName != "NSStringLocalizedFormatKey" else { continue }

      guard
        let variableDict = varDict as? [String: Any],
        let formatSpecType = variableDict["NSStringFormatSpecTypeKey"] as? String,
        let formatValueType = variableDict["NSStringFormatValueTypeKey"] as? String
      else {
        throw ParsingError.invalidVariableFormat(variableName: varName, key: key)
      }

      var variants: [PluralVariant: String] = [:]

      for variant in PluralVariant.allCases {
        if let variantString = variableDict[variant.rawValue] as? String {
          variants[variant] = variantString
        }
      }

      if variants.isEmpty {
        throw ParsingError.emptyVariants(variableName: varName, key: key)
      }

      let variable = PluralVariable(
        name: varName,
        formatSpecType: formatSpecType,
        formatValueType: formatValueType,
        variants: variants
      )

      variables[varName] = variable
    }

    guard !variables.isEmpty else {
      throw ParsingError.noValidVariables(key: key)
    }

    return .plural(PluralizedTranslationData(
      key: key,
      formatString: formatString,
      variables: variables,
      table: table
    ))
  }

  private func compareKeys(_ lhs: String, _ rhs: String) -> Bool {
    let lhsComponents = lhs.components(separatedBy: Configuration.keySeparator)
    let rhsComponents = rhs.components(separatedBy: Configuration.keySeparator)

    let minCount = min(lhsComponents.count, rhsComponents.count)
    for i in 0..<minCount {
      if lhsComponents[i] != rhsComponents[i] {
        return lhsComponents[i] < rhsComponents[i]
      }
    }
    return lhsComponents.count < rhsComponents.count
  }
}

extension LprojParser {
  enum ParsingError: LocalizedError {
    case missingFormatString(key: String)
    case noValidVariables(key: String)
    case invalidPluralDictionary(key: String, missingKeys: [String])
    case invalidVariableFormat(variableName: String, key: String)
    case emptyVariants(variableName: String, key: String)
    case invalidFileFormat(path: String)

    var errorDescription: String? {
      switch self {
      case .missingFormatString(let key):
        "Missing NSStringLocalizedFormatKey for key: \(key)"
      case .noValidVariables(let key):
        "No valid plural variables found for key: \(key)"
      case .invalidPluralDictionary(let key, let missingKeys):
        "Invalid plural dictionary for key '\(key)'. Missing required keys: \(missingKeys.joined(separator: ", "))"
      case .invalidVariableFormat(let varName, let key):
        "Invalid format for variable '\(varName)' in key '\(key)'. Missing NSStringFormatSpecTypeKey or NSStringFormatValueTypeKey"
      case .emptyVariants(let varName, let key):
        "No plural variants found for variable '\(varName)' in key '\(key)'"
      case .invalidFileFormat(let path):
        "Invalid file format at path: \(path)"
      }
    }
  }
}
