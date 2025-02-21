struct PluralizedTranslationData: Hashable {
    let key: String
    let formatString: String // The NSStringLocalizedFormatKey value
    let variables: [String: PluralVariable] // Dictionary of variable name to its plural rules
    let table: String
    
    var allVariables: [PluralVariable] {
        Array(variables.values)
    }
} 