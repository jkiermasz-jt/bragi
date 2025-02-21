import Foundation

enum FormatSpecifierParsingError: LocalizedError {
    case invalidRegexPattern
    case invalidFormatSpecifier(String)
    
    var errorDescription: String? {
        switch self {
        case .invalidRegexPattern:
            "Failed to create regular expression for format specifiers"
        case .invalidFormatSpecifier(let specifier):
            "Invalid format specifier: \(specifier)"
        }
    }
}

enum FormatSpecifier {
    case string
    case float
    case int
    case int64
    case uint
    case uint64
    case char
    case pointer
    
    var swiftType: String {
        switch self {
        case .string: "String"
        case .float: "Double"
        case .int, .uint: "Int"
        case .int64, .uint64: "Int64"
        case .char: "Character"
        case .pointer: "UnsafeRawPointer"
        }
    }
}

extension FormatSpecifier {
    static func parse(from formatString: String) throws -> [FormatSpecifier] {
        guard formatString.contains("%") else {
            throw FormatSpecifierParsingError.invalidFormatSpecifier("String contains no format specifiers")
        }
        
        let processedString = formatString.replacingOccurrences(of: "%%", with: "")
        guard processedString.contains("%") else { return [] }
        
        let withoutPlurals = try replacePluralVariables(in: processedString)
        
        let position = "(?:([1-9]\\d*)\\$)?"  // Group 1: position (must start with 1-9)
        let flags = "[-+ 0#]*"                // Not captured
        let width = "\\d*"                    // Not captured
        let precision = "(?:\\.\\d*)?"        // Not captured
        let length = "(h|hh|l|ll|z|j|t)?"     // Group 2: length modifier
        let type = "([diuoxXDUfFeEgGaAcsp@])" // Group 3: type (added uppercase variants)
        
        let pattern = "%\(position)\(flags)\(width)\(precision)\(length)\(type)"
        
        let regex = try NSRegularExpression(pattern: pattern, options: [])
        let range = NSRange(withoutPlurals.startIndex..<withoutPlurals.endIndex, in: withoutPlurals)
        let matches = regex.matches(in: withoutPlurals, options: [], range: range)
        
        // If we have % but no valid matches, it means we have invalid format specifier
        if matches.isEmpty && withoutPlurals.contains("%") {
            throw FormatSpecifierParsingError.invalidFormatSpecifier("Invalid format specifier syntax")
        }
        
        return try matches.compactMap { match -> FormatSpecifier in
            guard let typeRange = Range(match.range(at: 3), in: withoutPlurals) else {
                throw FormatSpecifierParsingError.invalidFormatSpecifier("Could not extract type specifier")
            }
            
            let typeChar = withoutPlurals[typeRange].uppercased()
            let hasLongModifier = Range(match.range(at: 2), in: withoutPlurals)
                .map { withoutPlurals[$0].contains("l") } ?? false
            
            return switch typeChar {
            case "@": .string
            case "F", "E", "G", "A": .float
            case "D", "I": hasLongModifier ? .int64 : .int
            case "U", "O", "X": hasLongModifier ? .uint64 : .uint
            case "C": .char
            case "P": .pointer
            case "S": .string
            default:
                throw FormatSpecifierParsingError.invalidFormatSpecifier(String(typeChar))
            }
        }
    }
  
  static func replacePluralVariables(in formatString: String) throws -> String {
      let pattern = #"%(?>(\d+)\$)?#@([\w\.\p{Pd}]+)@"#
      let regex = try NSRegularExpression(pattern: pattern, options: [])
      let range = NSRange(formatString.startIndex..<formatString.endIndex, in: formatString)
      
      var result = formatString
      var offset = 0
      
      regex.matches(in: formatString, options: [], range: range).forEach { match in
          let fullRange = NSRange(location: match.range.location + offset, length: match.range.length)
          guard let range = Range(fullRange, in: result) else { return }
          
          // Replace plural variable with a simple integer format
          let replacement = "%d"
          result.replaceSubrange(range, with: replacement)
          offset += replacement.count - match.range.length
      }
      
      return result
  }
}
