import Foundation

struct OutputGenerator {
    func generate(translations: [Translation], to path: String) throws {
        var content = """
        // Generated using Bragi - do not edit directly
        
        enum L10n {
        
        """
        
        content += generateTranslations(translations)
        content += "\n}\n"
        content += implementationDetails()
        
        try content.write(toFile: path, atomically: true, encoding: .utf8)
    }
    
    private func indent(_ level: Int) -> String {
        String(repeating: " ", count: level * Configuration.indentation)
    }
    
    private func generateTranslations(_ translations: [Translation]) -> String {
        var content = ""
        var currentNamespaces: [String] = []
        
        for translation in translations {
            let components = translation.key.components(separatedBy: Configuration.keySeparator)
            let lastIndex = components.count - 1
            
            // Close namespaces that are no longer needed
            while !currentNamespaces.isEmpty && !components.starts(with: currentNamespaces) {
                content += """
                
                \(indent(currentNamespaces.count + 1))}
                """
                currentNamespaces.removeLast()
            }
            
            // Open new namespaces if needed
            for (index, component) in components.enumerated() {
                if index == lastIndex { break }
                
                if currentNamespaces.count <= index {
                    let namespaceName = component.prefix(1).uppercased() + component.dropFirst()
                    content += """
                    
                    \(indent(index + 1))enum \(namespaceName) {
                    """
                    currentNamespaces.append(component)
                }
            }
            
            // Add translation
            content += generateTranslationAnchor(translation, indent: indent(components.count))
        }
        
        // Close remaining namespaces
        while !currentNamespaces.isEmpty {
            content += """
            
            \(indent(currentNamespaces.count + 1))}
            """
            currentNamespaces.removeLast()
        }
        
        return content
    }
    
    private func generateTranslationAnchor(_ translation: Translation, indent: String) -> String {
        switch translation {
        case .singular(let data):
            let key = data.key
            let value = data.value
            let nameComponents = key.components(separatedBy: Configuration.keySeparator)
            let propertyName = nameComponents.last ?? key
            
            let parameters = extractParameters(from: value)
            
            if parameters.isEmpty {
                // Generate constant for parameterless translations
                return """
                
                \(indent)static let \(propertyName) = tr("\(data.table)", "\(key)", fallback: "\(value)")
                """
            } else {
                // Generate function with typed parameters
                let parametersList = parameters.enumerated().map { index, type in
                    "_ p\(index): \(type)"
                }.joined(separator: ", ")
                
                let argumentsList = parameters.enumerated().map { index, type in
                    type == "Any" ? "String(describing: p\(index))" : "p\(index)"
                }.joined(separator: ", ")
                
                return """
                
                \(indent)static func \(propertyName)(\(parametersList)) -> String {
                \(indent)    tr("\(data.table)", "\(key)", \(argumentsList), fallback: "\(value)")
                \(indent)}
                """
            }
        case .plural(let data):
            let key = data.key
            let nameComponents = key.components(separatedBy: Configuration.keySeparator)
            let propertyName = nameComponents.last ?? key
            
            // Create parameters list from variables
            let parametersList = data.variables.values.map { variable in
                "_ \(variable.name): \(swiftType(for: variable.formatValueType))"
            }.joined(separator: ", ")
            
            // Create arguments list for tr function
            let argumentsList = data.variables.values.map { $0.name }.joined(separator: ", ")
            
            return """
            
            \(indent)static func \(propertyName)(\(parametersList)) -> String {
            \(indent)    tr("\(data.table)", "\(key)", \(argumentsList), fallback: "\(data.formatString)")
            \(indent)}
            """
        }
    }
    
    private func extractParameters(from value: String) -> [String] {
        let pattern = "%[\\d]*[@df]"
        let regex = try! NSRegularExpression(pattern: pattern, options: [])
        let matches = regex.matches(in: value, options: [], range: NSRange(value.startIndex..., in: value))
        
        return matches.map { match in
            let format = (value as NSString).substring(with: match.range)
            switch format.last {
            case "@": return "String"
            case "d": return "Int64"
            case "f": return "Double"
            default: return "Any"
            }
        }
    }
    
    private func swiftType(for formatType: String) -> String {
        switch formatType {
        case "d", "u": return "Int"
        case "ld", "lu": return "Int64"
        case "f": return "Double"
        case "@": return "String"
        default: return "Any"
        }
    }
    
    private func implementationDetails() -> String {
        """
        
        // MARK: - Implementation Details
        
        extension L10n {
          private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
            let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
            return String(format: format, locale: Locale.current, arguments: args)
          }
        }
        
        private final class BundleToken {
          static let bundle: Bundle = {
            #if SWIFT_PACKAGE
            return Bundle.module
            #else
            return Bundle(for: BundleToken.self)
            #endif
          }()
        }
        
        """
    }
}
