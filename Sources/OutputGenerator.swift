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
    
    private func generateTranslations(_ translations: [Translation]) -> String {
        // First, organize translations into a tree structure
        var tree: [String: Any] = [:] // Can contain either [String: Any] (namespace) or Translation (leaf)
        
        for translation in translations {
            switch translation {
            case .singular(let data):
                let components = data.key.split(separator: "_").map(String.init)
                insertIntoTree(&tree, components: components, translation: translation)
            }
        }
        
        // Then generate code from the tree
        return generateFromTree(tree, indent: "    ")
    }
    
    private func insertIntoTree(_ tree: inout [String: Any], components: [String], translation: Translation) {
        guard components.count > 1 else {
            // Leaf node - actual translation
            tree[components[0]] = translation
            return
        }
        
        // Create or get namespace
        let namespace = components[0]
        var subTree = tree[namespace] as? [String: Any] ?? [:]
        
        // Recurse with remaining components
        insertIntoTree(&subTree, components: Array(components.dropFirst()), translation: translation)
        
        // Update tree
        tree[namespace] = subTree
    }
    
    private func generateFromTree(_ tree: [String: Any], indent: String) -> String {
        var content = ""
        
        // Sort entries for consistent output
        let sortedEntries = tree.sorted { $0.key < $1.key }
        
        for (key, value) in sortedEntries {
            if let subTree = value as? [String: Any] {
                // Namespace - capitalize only first letter
                let namespaceName = key.prefix(1).uppercased() + key.dropFirst()
                
                content += """
                
                \(indent)enum \(namespaceName) {
                """
                
                content += generateFromTree(subTree, indent: indent + "    ")
                
                content += """
                
                \(indent)}
                """
            } else if let translation = value as? Translation {
                // Leaf - translation
                content += generateTranslationAnchor(translation, indent: indent)
            }
        }
        
        return content
    }
    
    private func generateTranslationAnchor(_ translation: Translation, indent: String) -> String {
        switch translation {
        case .singular(let data):
            let key = data.key
            let value = data.value
            let nameComponents = key.split(separator: "_")
            let propertyName = nameComponents.last.map(String.init) ?? key
            
            let parameters = extractParameters(from: value)
            
            if parameters.isEmpty {
                // Generate constant for parameterless translations
                return """
                
                \(indent)static let \(propertyName) = tr("Localizable", "\(key)", fallback: "\(value)")
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
                \(indent)    tr("Localizable", "\(key)", \(argumentsList), fallback: "\(value)")
                \(indent)}
                """
            }
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
