@testable import bragi
import Testing

@Suite struct FormatParameterExtractorTests {
    @Test func extractFromSingularTranslation() {
        let extractor = FormatParameterExtractor()
        
        let translation = Translation.singular(
            SingularTranslationData(
                key: "test",
                value: "Hello %@ you have %d messages",
                table: "Localizable"
            )
        )
        
        let parameters = extractor.extractParameters(from: translation)
        #expect(parameters.count == 2)
        #expect(parameters[0] == (name: "p0", type: "String"))
        #expect(parameters[1] == (name: "p1", type: "Int"))
    }
    
    @Test func extractFromPluralTranslation() {
        let extractor = FormatParameterExtractor()
        
        let translation = Translation.plural(
            PluralizedTranslationData(
                key: "test",
                formatString: "%#@messages@",
                variables: [
                    "messages": PluralVariable(
                        name: "messages",
                        formatSpecType: "NSStringPluralRuleType",
                        formatValueType: "d",
                        variants: [.other: "%d messages"]
                    )
                ],
                table: "Localizable"
            )
        )
        
        let parameters = extractor.extractParameters(from: translation)
        #expect(parameters.count == 1)
        #expect(parameters[0] == (name: "messages", type: "Int"))
    }
} 