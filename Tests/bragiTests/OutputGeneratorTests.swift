@testable import bragi
import Testing

@Suite struct OutputGeneratorTests {
  @Test func generateNestedNamespacesWithCorrectIndentation() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "Absence_Conflicts_Title",
        value: "Conflicts",
        table: "Localizable"
      )),
      Translation.singular(SingularTranslationData(
        key: "Absence_Conflicts_Subtitle",
        value: "Found %d conflicts",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)
    let expected = """
    // Generated using Bragi - do not edit directly

    enum L10n {

      enum Absence {
        enum Conflicts {
          static let title = tr("Localizable", "Absence_Conflicts_Title", fallback: "Conflicts")
          static func subtitle(_ p0: Int) -> String {
            tr("Localizable", "Absence_Conflicts_Subtitle", p0, fallback: "Found %d conflicts")
          }
        }
      }
    }

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

    #expect(output == expected)
  }

  @Test func generateSimpleTranslation() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "hello",
        value: "Hello, World!",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)
    #expect(output.contains("static let hello = tr(\"Localizable\", \"hello\", fallback: \"Hello, World!\")"))
  }
}
