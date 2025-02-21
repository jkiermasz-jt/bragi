struct PluralizedTranslationData: Hashable {
    let key: String
    let formatString: String
    let variables: [String: PluralVariable]
    let table: String
} 
