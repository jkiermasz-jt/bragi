@testable import bragi
import Testing

@Suite struct NamespaceManagerTests {
    @Test func generateNamespaces() {
        let manager = NamespaceManager()
        
        let namespaces = manager.generateNamespaces(for: "Common_Alert_Title")
        #expect(namespaces == ["Common", "Alert"])
    }
    
    @Test func indentation() {
        let manager = NamespaceManager(indentation: 2)
        
        #expect(manager.indent(1) == "  ")
        #expect(manager.indent(2) == "    ")
    }
} 