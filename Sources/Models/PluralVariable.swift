struct PluralVariable: Hashable {
    let name: String
    let formatSpecType: String // Usually "NSStringPluralRuleType"
    let formatValueType: String // "d", "ld", etc.
    let variants: [PluralVariant: String]
} 