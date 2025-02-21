import Foundation

struct OutputGenerator {
  private let parameterExtractor: FormatParameterExtractor
  private let namespaceManager: NamespaceManager
  private let codeGenerator: CodeGenerator
  
  init(
    parameterExtractor: FormatParameterExtractor = FormatParameterExtractor(),
    namespaceManager: NamespaceManager = NamespaceManager(),
    codeGenerator: CodeGenerator = CodeGenerator()
  ) {
    self.parameterExtractor = parameterExtractor
    self.namespaceManager = namespaceManager
    self.codeGenerator = codeGenerator
  }

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
    var content = ""
    var currentNamespaces: [String] = []

    for translation in translations {
      let components = translation.key.components(separatedBy: Configuration.keySeparator)
      let lastIndex = components.count - 1

      while !currentNamespaces.isEmpty, !components.starts(with: currentNamespaces) {
        content += """

        \(namespaceManager.indent(currentNamespaces.count + 1))}
        """
        currentNamespaces.removeLast()
      }

      for (index, component) in components.enumerated() {
        if index == lastIndex { break }

        if currentNamespaces.count <= index {
          let namespaceName = component.prefix(1).uppercased() + component.dropFirst()
          content += """

          \(namespaceManager.indent(index + 1))enum \(namespaceName) {
          """
          currentNamespaces.append(component)
        }
      }

      let anchor = createTranslationAnchor(from: translation)
      content += codeGenerator.generateAnchor(anchor, indentLevel: components.count)
    }

    while !currentNamespaces.isEmpty {
      content += """

      \(namespaceManager.indent(currentNamespaces.count + 1))}
      """
      currentNamespaces.removeLast()
    }

    return content
  }

  private func createTranslationAnchor(from translation: Translation) -> TranslationAnchor {
    let components = translation.key.components(separatedBy: Configuration.keySeparator)
    let name = components.last ?? translation.key
    
    switch translation {
    case .singular(let data):
      return TranslationAnchor(
        name: name,
        table: data.table,
        key: data.key,
        parameters: parameterExtractor.extractParameters(from: translation),
        fallback: data.value
      )
    case .plural(let data):
      return TranslationAnchor(
        name: name,
        table: data.table,
        key: data.key,
        parameters: parameterExtractor.extractParameters(from: translation),
        fallback: data.fallbackFormat
      )
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

extension PluralizedTranslationData {
  fileprivate var fallbackFormat: String {
    // Use the "other" variant from the first variable as fallback
    guard let firstVariable = variables.values.first,
          let otherVariant = firstVariable.variants[.other]
    else {
      return formatString // Fallback to formatString if no "other" variant found
    }
    return otherVariant
  }
}
