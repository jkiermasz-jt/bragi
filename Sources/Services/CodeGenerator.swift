struct CodeGenerator {
  private let namespaceManager: NamespaceManager
  private let identifierSanitizer: IdentifierSanitizer

  init(
    namespaceManager: NamespaceManager = NamespaceManager(),
    identifierSanitizer: IdentifierSanitizer = IdentifierSanitizer(capitalized: false)
  ) {
    self.namespaceManager = namespaceManager
    self.identifierSanitizer = identifierSanitizer
  }

  func generateAnchor(
    _ anchor: TranslationAnchor,
    indentLevel: Int,
    accessLevel: Configuration.AccessLevel = Configuration.accessLevel
  ) -> String {
    let indent = namespaceManager.indent(indentLevel)

    // Escape special characters in the fallback string
    let escapedFallback = anchor.fallback
      .replacingOccurrences(of: "\n", with: "\\n")
      .replacingOccurrences(of: "\"", with: "\\\"")

    // Sanitize name if it's a problematic identifier
    let sanitizedName = identifierSanitizer.sanitize(anchor.name)

    if anchor.isConstant {
      return """

      \(indent)\(accessLevel.prefix)static let \(sanitizedName) = tr("\(anchor.table)", "\(anchor.key)", fallback: "\(escapedFallback)")
      """
    }

    let parametersList = anchor.parameters.map {
      "_ \($0.name): \($0.type)"
    }.joined(separator: ", ")

    let argumentsList = anchor.parameters.map { param in
      param.type == "Any" ? "String(describing: \(param.name))" : param.name
    }.joined(separator: ", ")

    return """

    \(indent)\(accessLevel.prefix)static func \(sanitizedName)(\(parametersList)) -> String {
    \(namespaceManager.indent(indentLevel + 1))tr("\(anchor.table)", "\(anchor.key)", \(argumentsList), fallback: "\(escapedFallback)")
    \(indent)}
    """
  }
}
