import Foundation

struct OutputGenerator {
    func generate(translations: [Translation], to path: String) throws {
        var content = """
        // Generated using Bragi - do not edit directly
        
        enum L10n {
        
        }
        
        """
        
        content += implementationDetails()
        
        try content.write(toFile: path, atomically: true, encoding: .utf8)
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
