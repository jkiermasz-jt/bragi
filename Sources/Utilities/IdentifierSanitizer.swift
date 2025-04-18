import Foundation

/// Utility to sanitize identifiers according to Swift naming rules
struct IdentifierSanitizer {
  
  /// Swift keywords that need to be escaped with backticks when used as identifiers
  private static let swiftKeywords: Set<String> = [
    "associatedtype", "class", "deinit", "enum", "extension", "fileprivate", 
    "func", "import", "init", "inout", "internal", "let", "open", "operator", 
    "private", "protocol", "public", "rethrows", "static", "struct", "subscript", 
    "typealias", "var", "break", "case", "continue", "default", "defer", "do", 
    "else", "fallthrough", "for", "guard", "if", "in", "repeat", "return", 
    "switch", "where", "while", "as", "Any", "catch", "false", "is", "nil", 
    "super", "self", "Self", "throw", "throws", "true", "try", "some", "await",
    "Type", "_"
  ]
  
  /// Determines if the first character of sanitized identifiers should be capitalized
  private let capitalized: Bool
  
  /// Creates a new identifier sanitizer with the specified capitalization mode
  /// - Parameter capitalized: Whether the first character should be uppercased (for enum names) or lowercased (for properties)
  init(capitalized: Bool = false) {
    self.capitalized = capitalized
  }
  
  /// Sanitizes an identifier to make it valid in Swift
  /// - Parameter identifier: The raw identifier to sanitize
  /// - Returns: A valid Swift identifier
  func sanitize(_ identifier: String) -> String {
    if identifier.isEmpty {
      return capitalized ? "_Empty" : "_empty"
    }
    
    var result = identifier
    
    if identifier.allSatisfy({ $0.isNumber }) {
      result = "_\(identifier)"
    }

    else if let firstChar = identifier.first, firstChar.isNumber {
      result = "_\(identifier)"
    }
    
    let lowercasedKeywords: Set<String> = {
      return Set(Self.swiftKeywords.map { $0.lowercased() })
    }()
    
    if lowercasedKeywords.contains(result.lowercased()) {
      let canonicalKeyword = findCanonicalKeyword(for: result)
      
      let innerResult: String
      if capitalized {
        innerResult = canonicalKeyword.prefix(1).uppercased() + canonicalKeyword.dropFirst()
      } else {
        innerResult = canonicalKeyword.prefix(1).lowercased() + canonicalKeyword.dropFirst()
      }
      
      return "`\(innerResult)`"
    }
    
    if !result.isEmpty {
      if capitalized {
        return result.prefix(1).uppercased() + result.dropFirst()
      } else {
        return result.prefix(1).lowercased() + result.dropFirst()
      }
    }
    
    return result
  }
  
  /// Finds the canonical form of a Swift keyword (matching documentation capitalization)
  /// - Parameter identifier: The identifier to find a matching keyword for
  /// - Returns: The canonical form of the keyword if found, or the original identifier
  private func findCanonicalKeyword(for identifier: String) -> String {
    if Self.swiftKeywords.contains(identifier) {
      return identifier
    }
    

    let lowercased = identifier.lowercased()
    for keyword in Self.swiftKeywords {
      if keyword.lowercased() == lowercased {
        return keyword
      }
    }
    
    return identifier
  }
} 