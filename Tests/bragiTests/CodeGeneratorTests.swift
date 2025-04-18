@testable import bragi
import Testing

@Suite struct CodeGeneratorTests {
  @Test func generateConstantAnchor() {
    let generator = CodeGenerator()

    let anchor = TranslationAnchor(
      name: "title",
      table: "Localizable",
      key: "Common_Alert_Title",
      parameters: [],
      fallback: "Alert"
    )

    let code = generator.generateAnchor(anchor, indentLevel: 2)
    #expect(code == """

        static let title = tr("Localizable", "Common_Alert_Title", fallback: "Alert")
    """)
  }

  @Test func generateFunctionAnchor() {
    let generator = CodeGenerator()

    let anchor = TranslationAnchor(
      name: "message",
      table: "Localizable",
      key: "Common_Alert_Message",
      parameters: [
        (name: "count", type: "Int"),
        (name: "type", type: "String"),
      ],
      fallback: "You have %d new %@ messages"
    )

    let code = generator.generateAnchor(anchor, indentLevel: 2)
    #expect(code == """

        static func message(_ count: Int, _ type: String) -> String {
          tr("Localizable", "Common_Alert_Message", count, type, fallback: "You have %d new %@ messages")
        }
    """)
  }

  @Test func sanitizeNumericStartingNames() {
    let generator = CodeGenerator()

    let anchor = TranslationAnchor(
      name: "1star",
      table: "Localizable",
      key: "ratingsExplanation_list_1star",
      parameters: [],
      fallback: "<b>1 star</b> = Their performance was significantly below expectations."
    )

    let code = generator.generateAnchor(anchor, indentLevel: 2)
    #expect(code == """

        static let _1star = tr("Localizable", "ratingsExplanation_list_1star", fallback: "<b>1 star</b> = Their performance was significantly below expectations.")
    """)
  }

  @Test func sanitizeNumericStartingNamesForFunction() {
    let generator = CodeGenerator()

    let anchor = TranslationAnchor(
      name: "1starDescription",
      table: "Localizable",
      key: "ratingsExplanation_list_1starDescription",
      parameters: [
        (name: "name", type: "String"),
      ],
      fallback: "<b>1 star</b> = %@ performed significantly below expectations."
    )

    let code = generator.generateAnchor(anchor, indentLevel: 2)
    #expect(code == """

        static func _1starDescription(_ name: String) -> String {
          tr("Localizable", "ratingsExplanation_list_1starDescription", name, fallback: "<b>1 star</b> = %@ performed significantly below expectations.")
        }
    """)
  }

  @Test func sanitizePurelyNumericNames() {
    let generator = CodeGenerator()

    let anchor = TranslationAnchor(
      name: "401",
      table: "Localizable",
      key: "error_401",
      parameters: [],
      fallback: "Unauthorized"
    )

    let code = generator.generateAnchor(anchor, indentLevel: 2)
    #expect(code == """

        static let _401 = tr("Localizable", "error_401", fallback: "Unauthorized")
    """)
  }

  @Test func sanitizeSwiftKeywords() {
    let generator = CodeGenerator()

    let anchor = TranslationAnchor(
      name: "self",
      table: "Localizable",
      key: "profile_self",
      parameters: [],
      fallback: "Your profile"
    )

    let code = generator.generateAnchor(anchor, indentLevel: 2)
    #expect(code == """

        static let `self` = tr("Localizable", "profile_self", fallback: "Your profile")
    """)
  }

  @Test func doNotSanitizeIdentifiersContainingKeywords() {
    let generator = CodeGenerator()

    let anchor = TranslationAnchor(
      name: "selfie",
      table: "Localizable",
      key: "profile_selfie",
      parameters: [],
      fallback: "Your selfie"
    )

    let code = generator.generateAnchor(anchor, indentLevel: 2)
    #expect(code == """

        static let selfie = tr("Localizable", "profile_selfie", fallback: "Your selfie")
    """)

    let anchor2 = TranslationAnchor(
      name: "notification",
      table: "Localizable",
      key: "profile_notification",
      parameters: [],
      fallback: "Notification settings"
    )

    let code2 = generator.generateAnchor(anchor2, indentLevel: 2)
    #expect(code2 == """

        static let notification = tr("Localizable", "profile_notification", fallback: "Notification settings")
    """)
  }

  @Test func escapeQuotationMarksInFallbacks() {
    let generator = CodeGenerator()

    let anchor = TranslationAnchor(
      name: "shift",
      table: "Localizable",
      key: "workerprofile_performance_body_feedback_shift",
      parameters: [
        (name: "p0", type: "String"),
      ],
      fallback: "\"%@\" shift"
    )

    let code = generator.generateAnchor(anchor, indentLevel: 2)
    #expect(code == """

        static func shift(_ p0: String) -> String {
          tr("Localizable", "workerprofile_performance_body_feedback_shift", p0, fallback: "\\\"%@\\\" shift")
        }
    """)
  }
}
