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
                (name: "type", type: "String")
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
} 