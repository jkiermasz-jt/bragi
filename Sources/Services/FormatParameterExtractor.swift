struct FormatParameterExtractor {
    func extractParameters(from translation: Translation) -> [(name: String, type: String)] {
        switch translation {
        case .singular(let data):
            return extractFromString(data.value)
        case .plural(let data):
            return extractFromPluralData(data)
        }
    }
    
    private func extractFromString(_ value: String) -> [(name: String, type: String)] {
        (try? FormatSpecifier.parse(from: value))?.enumerated().map { index, specifier in
            (name: "p\(index)", type: specifier.swiftType)
        } ?? []
    }
    
    private func extractFromPluralData(_ data: PluralizedTranslationData) -> [(name: String, type: String)] {
        data.variables.values.map { variable in
            (name: variable.name, type: swiftType(for: variable.formatValueType))
        }
    }
    
    private func swiftType(for formatType: String) -> String {
        switch formatType {
        case "d", "u": "Int"
        case "ld", "lu": "Int64"
        case "f": "Double"
        case "@": "String"
        default: "Any"
        }
    }
} 