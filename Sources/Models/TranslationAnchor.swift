struct TranslationAnchor {
  let name: String
  let table: String
  let key: String
  let parameters: [(name: String, type: String)]
  let fallback: String

  var isConstant: Bool { parameters.isEmpty }
}
