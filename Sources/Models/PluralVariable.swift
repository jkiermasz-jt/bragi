struct PluralVariable: Hashable {
  let name: String
  let formatSpecType: String
  let formatValueType: String
  let variants: [PluralVariant: String]
}
