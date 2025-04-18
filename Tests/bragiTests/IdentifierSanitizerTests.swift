@testable import bragi
import Testing

@Suite struct IdentifierSanitizerTests {
  @Test func propertySanitizerEmptyIdentifier() {
    let sanitizer = IdentifierSanitizer(capitalized: false)
    let result = sanitizer.sanitize("")
    #expect(result == "_empty")
  }

  @Test func propertySanitizerPurelyNumericIdentifier() {
    let sanitizer = IdentifierSanitizer(capitalized: false)
    let result = sanitizer.sanitize("401")
    #expect(result == "_401")
  }

  @Test func propertySanitizerIdentifierStartingWithNumber() {
    let sanitizer = IdentifierSanitizer(capitalized: false)
    let result = sanitizer.sanitize("1star")
    #expect(result == "_1star")
  }

  @Test func propertySanitizerSwiftKeyword() {
    let sanitizer = IdentifierSanitizer(capitalized: false)
    let result = sanitizer.sanitize("self")
    #expect(result == "`self`")
  }

  @Test func propertySanitizerDoNotSanitizeValidIdentifier() {
    let sanitizer = IdentifierSanitizer(capitalized: false)
    let result = sanitizer.sanitize("userName")
    #expect(result == "userName")
  }

  @Test func propertySanitizerLowercaseFirstLetter() {
    let sanitizer = IdentifierSanitizer(capitalized: false)
    let result = sanitizer.sanitize("Title")
    #expect(result == "title")
  }

  @Test func propertySanitizerIdentifierContainingKeyword() {
    let sanitizer = IdentifierSanitizer(capitalized: false)
    let result = sanitizer.sanitize("selfie")
    #expect(result == "selfie")
  }

  @Test func enumSanitizerEmptyIdentifier() {
    let sanitizer = IdentifierSanitizer(capitalized: true)
    let result = sanitizer.sanitize("")
    #expect(result == "_Empty")
  }

  @Test func enumSanitizerPurelyNumericIdentifier() {
    let sanitizer = IdentifierSanitizer(capitalized: true)
    let result = sanitizer.sanitize("401")
    #expect(result == "_401")
  }

  @Test func enumSanitizerIdentifierStartingWithNumber() {
    let sanitizer = IdentifierSanitizer(capitalized: true)
    let result = sanitizer.sanitize("1star")
    #expect(result == "_1star")
  }

  @Test func enumSanitizerSwiftKeyword() {
    let sanitizer = IdentifierSanitizer(capitalized: true)
    let result = sanitizer.sanitize("class")
    #expect(result == "`Class`")
  }

  @Test func enumSanitizerUppercaseFirstLetter() {
    let sanitizer = IdentifierSanitizer(capitalized: true)
    let result = sanitizer.sanitize("title")
    #expect(result == "Title")
  }

  @Test func enumSanitizerLeaveCapitalizedIdentifierAsIs() {
    let sanitizer = IdentifierSanitizer(capitalized: true)
    let result = sanitizer.sanitize("UserName")
    #expect(result == "UserName")
  }

  @Test func typeKeywordInProperties() {
    let sanitizer = IdentifierSanitizer(capitalized: false)
    let result = sanitizer.sanitize("type")
    #expect(result == "`type`")

    let capitalized = sanitizer.sanitize("Type")
    #expect(capitalized == "`type`")
  }

  @Test func typeKeywordInEnums() {
    let sanitizer = IdentifierSanitizer(capitalized: true)
    let result = sanitizer.sanitize("type")
    #expect(result == "`Type`")

    let capitalized = sanitizer.sanitize("Type")
    #expect(capitalized == "`Type`")
  }

  @Test func reuseTheSameSanitizer() {
    let sanitizer = IdentifierSanitizer(capitalized: true)

    let result1 = sanitizer.sanitize("title")
    let result2 = sanitizer.sanitize("self")
    let result3 = sanitizer.sanitize("401")

    #expect(result1 == "Title")
    #expect(result2 == "`Self`")
    #expect(result3 == "_401")
  }
}
