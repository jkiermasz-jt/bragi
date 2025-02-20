import Foundation

struct LprojParser {
    func parseDirectory(at path: String) throws -> [Translation] {
        let fileManager = FileManager.default
        var translations: [Translation] = []
        
        // Get all .strings and .stringsdict files
        let contents = try fileManager.contentsOfDirectory(atPath: path)
        let stringsFiles = contents.filter { $0.hasSuffix(".strings") }
        let stringsDictFiles = contents.filter { $0.hasSuffix(".stringsdict") }
        
        // Parse .strings files
        for fileName in stringsFiles.sorted() {
            let filePath = (path as NSString).appendingPathComponent(fileName)
            if let dict = NSDictionary(contentsOfFile: filePath) as? [String: String] {
                let fileTranslations = dict.map { createSingularTranslation(key: $0, value: $1) }
                translations.append(contentsOf: fileTranslations)
            }
        }
        
        // Parse .stringsdict files
        for fileName in stringsDictFiles.sorted() {
            let filePath = (path as NSString).appendingPathComponent(fileName)
            if let dict = NSDictionary(contentsOfFile: filePath) as? [String: Any] {
                let fileTranslations = try dict.compactMap { key, value -> Translation? in
                    guard let pluralDict = value as? [String: Any] else { return nil }
                    return try createPluralTranslation(key: key, dict: pluralDict)
                }
                translations.append(contentsOf: fileTranslations)
            }
        }
        
        // Sort translations by their full key path
        return translations.sorted { lhs, rhs in
            compareKeys(lhs.key, rhs.key)
        }
    }
    
    private func createSingularTranslation(key: String, value: String) -> Translation {
        .singular(SingularTranslationData(key: key, value: value))
    }
    
    private func createPluralTranslation(key: String, dict: [String: Any]) throws -> Translation {
        guard let formatString = dict["NSStringLocalizedFormatKey"] as? String else {
            throw ParsingError.missingFormatString(key: key)
        }
        
        var variables: [String: PluralVariable] = [:]
        
        // Process each variable in the plural dictionary
        for (varName, varDict) in dict {
            guard 
                varName != "NSStringLocalizedFormatKey",
                let variableDict = varDict as? [String: Any],
                let formatSpecType = variableDict["NSStringFormatSpecTypeKey"] as? String,
                let formatValueType = variableDict["NSStringFormatValueTypeKey"] as? String
            else { continue }
            
            var variants: [PluralVariant: String] = [:]
            
            // Extract plural variants
            for variant in PluralVariant.allCases {
                if let variantString = variableDict[variant.rawValue] as? String {
                    variants[variant] = variantString
                }
            }
            
            guard !variants.isEmpty else { continue }
            
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
            variables: variables
        ))
    }
    
    private func compareKeys(_ lhs: String, _ rhs: String) -> Bool {
        let lhsComponents = lhs.split(separator: "_")
        let rhsComponents = rhs.split(separator: "_")
        
        let minCount = min(lhsComponents.count, rhsComponents.count)
        for i in 0..<minCount {
            if lhsComponents[i] != rhsComponents[i] {
                return lhsComponents[i] < rhsComponents[i]
            }
        }
        return lhsComponents.count < rhsComponents.count
    }
}

// MARK: - Errors

extension LprojParser {
    enum ParsingError: LocalizedError {
        case missingFormatString(key: String)
        case noValidVariables(key: String)
        
        var errorDescription: String? {
            switch self {
            case .missingFormatString(let key):
                return "Missing NSStringLocalizedFormatKey for key: \(key)"
            case .noValidVariables(let key):
                return "No valid plural variables found for key: \(key)"
            }
        }
    }
} 