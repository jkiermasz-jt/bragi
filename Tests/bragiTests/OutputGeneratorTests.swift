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

    public enum L10n {

      public enum Absence {
        public enum Conflicts {
          public static let title = tr("Localizable", "Absence_Conflicts_Title", fallback: "Conflicts")
          public static func subtitle(_ p0: Int) -> String {
            tr("Localizable", "Absence_Conflicts_Subtitle", p0, fallback: "Found %d conflicts")
          }
        }
      }
    }

    // MARK: - Implementation Details

    import Foundation

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
    #expect(output.contains("public static let hello = tr(\"Localizable\", \"hello\", fallback: \"Hello, World!\")"))
  }

  @Test func preserveNewlineCharactersInFallbacks() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "bulkApprove_unapproveMessage",
        value: "We could not approve hours for %1$d people. \nTry again?",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)
    #expect(output.contains("fallback: \"We could not approve hours for %1$d people. \\nTry again?\""))
  }

  @Test func handleNumericIdentifiers() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "ratingsExplanation_list_1star",
        value: "<b>1 star</b> = Their performance was significantly below expectations.",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)
    #expect(output.contains("public static let _1star = tr(\"Localizable\", \"ratingsExplanation_list_1star\", fallback:"))
  }

  @Test func handlePureNumericIdentifiers() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "error_401",
        value: "Unauthorized",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)
    #expect(output.contains("public static let _401 = tr(\"Localizable\", \"error_401\", fallback: \"Unauthorized\")"))
  }

  @Test func handleSwiftKeywords() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "profile_self",
        value: "Your profile",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)
    #expect(output.contains("public static let `self` = tr(\"Localizable\", \"profile_self\", fallback: \"Your profile\")"))
  }

  @Test func doNotEscapeIdentifiersContainingKeywords() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "profile_selfie",
        value: "Your selfie",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)

    // Check that "selfie" is not escaped with backticks (it contains "self" but isn't the keyword)
    #expect(output.contains("public static let selfie = tr(\"Localizable\", \"profile_selfie\", fallback: \"Your selfie\")"))
    #expect(!output.contains("public static let `selfie`"))
  }

  @Test func handleNumericKeysWithoutPrefix() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "Error_401",
        value: "Unauthorized",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)
    #expect(output.contains("public static let _401 = tr(\"Localizable\", \"Error_401\", fallback: \"Unauthorized\")"))
  }

  @Test func handlePureNumericKey() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "401", // Key is just a number with no namespace
        value: "Unauthorized",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)
    #expect(output.contains("public static let _401 = tr(\"Localizable\", \"401\", fallback: \"Unauthorized\")"))
  }

  @Test func handleNumericNamespaces() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "401_error",
        value: "Unauthorized",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)

    // Check that numeric namespace "401" is properly sanitized
    #expect(output.contains("public enum _401 {"))
    // And that property "error" is correctly generated
    #expect(output.contains("public static let error = tr(\"Localizable\", \"401_error\", fallback: \"Unauthorized\")"))
  }

  @Test func handleKeywordNamespaces() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "self_profile_title",
        value: "My Profile",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)

    // Check that keyword namespace "self" is properly escaped
    #expect(output.contains("public enum `Self` {"))
    // Check for nested namespace
    #expect(output.contains("public enum Profile {"))
    // And that property "title" is correctly generated
    #expect(output.contains("public static let title = tr(\"Localizable\", \"self_profile_title\", fallback: \"My Profile\")"))
  }

  @Test func handleMultipleNumericNamespaces() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "401_404_comparison",
        value: "Unauthorized vs Not Found",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)

    // Check that both numeric namespaces are properly sanitized
    #expect(output.contains("public enum _401 {"))
    #expect(output.contains("public enum _404 {"))
    // And that property is correctly generated
    #expect(output.contains("public static let comparison = tr(\"Localizable\", \"401_404_comparison\", fallback: \"Unauthorized vs Not Found\")"))
  }

  @Test func handleTypeKeywordInNamespace() {
    let generator = OutputGenerator()

    let translations = [
      Translation.singular(SingularTranslationData(
        key: "Type_description",
        value: "Type description",
        table: "Localizable"
      )),
    ]

    let output = generator.generate(translations: translations)

    // Check that the "Type" keyword is properly escaped in the namespace
    #expect(output.contains("public enum `Type` {"))
    // And that the property "description" is correctly generated
    #expect(output.contains("public static let description = tr(\"Localizable\", \"Type_description\", fallback: \"Type description\")"))
  }

  @Test func generateWithDifferentAccessLevels() {
    // Test with internal access level
    let internalGenerator = OutputGenerator(accessLevel: .internal)
    let internalTranslations = [
      Translation.singular(SingularTranslationData(
        key: "test_key",
        value: "Internal Test",
        table: "Localizable"
      )),
    ]

    let internalOutput = internalGenerator.generate(translations: internalTranslations)
    #expect(internalOutput.contains("internal enum L10n {"))
    #expect(internalOutput.contains("internal static let key = tr(\"Localizable\", \"test_key\", fallback: \"Internal Test\")"))

    // Test with package access level
    let packageGenerator = OutputGenerator(accessLevel: .package)
    let packageTranslations = [
      Translation.singular(SingularTranslationData(
        key: "test_key",
        value: "Package Test",
        table: "Localizable"
      )),
    ]

    let packageOutput = packageGenerator.generate(translations: packageTranslations)
    #expect(packageOutput.contains("package enum L10n {"))
    #expect(packageOutput.contains("package static let key = tr(\"Localizable\", \"test_key\", fallback: \"Package Test\")"))
  }
}
