@testable import bragi
import Testing

@Suite struct FormatSpecifierTests {
  @Test func basicFormatSpecifiers() throws {
    // String
    #expect(try FormatSpecifier.parse(from: "Hello %@") == [.string])
    #expect(try FormatSpecifier.parse(from: "Hello %s") == [.string])

    // Numbers
    #expect(try FormatSpecifier.parse(from: "Count: %d") == [.int])
    #expect(try FormatSpecifier.parse(from: "Count: %i") == [.int])
    #expect(try FormatSpecifier.parse(from: "Count: %u") == [.uint])
    #expect(try FormatSpecifier.parse(from: "Price: %f") == [.float])

    // Long numbers
    #expect(try FormatSpecifier.parse(from: "Big number: %ld") == [.int64])
    #expect(try FormatSpecifier.parse(from: "Big number: %lu") == [.uint64])
    #expect(try FormatSpecifier.parse(from: "Big number: %lld") == [.int64])
    #expect(try FormatSpecifier.parse(from: "Big number: %llu") == [.uint64])

    // Other types
    #expect(try FormatSpecifier.parse(from: "Char: %c") == [.char])
    #expect(try FormatSpecifier.parse(from: "Pointer: %p") == [.pointer])
  }

  @Test func multipleSpecifiers() throws {
    #expect(
      try FormatSpecifier.parse(from: "Hello %@, you have %d messages") == [.string, .int]
    )

    #expect(
      try FormatSpecifier.parse(from: "Balance: %ld.%d") == [.int64, .int]
    )

    #expect(
      try FormatSpecifier.parse(from: "%@: %d of %d") == [.string, .int, .int]
    )
  }

  @Test func positionalSpecifiers() throws {
    #expect(
      try FormatSpecifier.parse(from: "Hello %1$@, you have %2$d messages") == [.string, .int]
    )

    #expect(
      try FormatSpecifier.parse(from: "%2$@ comes before %1$@") == [.string, .string]
    )
  }

  @Test func widthAndPrecision() throws {
    // Width
    #expect(try FormatSpecifier.parse(from: "%5d") == [.int])
    #expect(try FormatSpecifier.parse(from: "%10@") == [.string])

    // Precision
    #expect(try FormatSpecifier.parse(from: "%.2f") == [.float])
    #expect(try FormatSpecifier.parse(from: "%.4f") == [.float])

    // Both
    #expect(try FormatSpecifier.parse(from: "%5.2f") == [.float])
    #expect(try FormatSpecifier.parse(from: "%10.4f") == [.float])
  }

  @Test func flags() throws {
    // Left-align
    #expect(try FormatSpecifier.parse(from: "%-10d") == [.int])
    // Show sign
    #expect(try FormatSpecifier.parse(from: "%+d") == [.int])
    // Alternate form
    #expect(try FormatSpecifier.parse(from: "%#x") == [.uint])
    // Zero padding
    #expect(try FormatSpecifier.parse(from: "%05d") == [.int])
    // Space padding
    #expect(try FormatSpecifier.parse(from: "% d") == [.int])
  }

  @Test func pluralizedStrings() throws {
    // Test typical stringsdict format strings
    #expect(
      try FormatSpecifier.parse(from: "%#@num_files@ in %#@num_folders@") == [.int, .int] // Each plural variable should be treated as an integer
    )

    // Mixed plural and regular format specifiers
    #expect(
      try FormatSpecifier.parse(from: "%#@count@ items by %@") == [.int, .string]
    )

    // With positional specifiers
    #expect(
      try FormatSpecifier.parse(from: "%1$#@count@ by %2$@") == [.int, .string]
    )

    // Complex combinations
    #expect(
      try FormatSpecifier.parse(from: "%#@files@ (%d items) by %@") == [.int, .int, .string]
    )
  }

  @Test func testInvalidSpecifiers() {
    // Empty string
    #expect(throws: FormatSpecifierParsingError.self) { try FormatSpecifier.parse(from: "") }

    // No format specifiers
    #expect(throws: FormatSpecifierParsingError.self) { try FormatSpecifier.parse(from: "Hello world") }

    // Invalid type specifier
    #expect(throws: FormatSpecifierParsingError.self) { try FormatSpecifier.parse(from: "%y") }
    #expect(throws: FormatSpecifierParsingError.self) { try FormatSpecifier.parse(from: "%k") }

    // Incomplete format specifier
    #expect(throws: FormatSpecifierParsingError.self) { try FormatSpecifier.parse(from: "%") }
    #expect(throws: FormatSpecifierParsingError.self) { try FormatSpecifier.parse(from: "Hello %") }

    // Invalid position
    #expect(throws: FormatSpecifierParsingError.self) { try FormatSpecifier.parse(from: "%0$d") }
  }

  @Test func edgeCases() throws {
    // Escaped percent sign
    #expect(try FormatSpecifier.parse(from: "100%% complete") == [])

    // Multiple flags
    #expect(try FormatSpecifier.parse(from: "%+-#05.2f") == [.float])

    // Multiple length modifiers
    #expect(try FormatSpecifier.parse(from: "%lld") == [.int64])

    // Mixed case format specifiers
    #expect(try FormatSpecifier.parse(from: "%D") == [.int])
    #expect(try FormatSpecifier.parse(from: "%F") == [.float])
  }
}
