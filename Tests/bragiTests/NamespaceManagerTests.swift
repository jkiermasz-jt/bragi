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

  @Test func generateNestedNamespaces() {
    let manager = NamespaceManager()

    let namespaces = manager.generateNamespaces(for: "Absence_Conflicts_Manageshifts_Bottomsheet_Title")
    #expect(namespaces == ["Absence", "Conflicts", "Manageshifts", "Bottomsheet"])
  }

  @Test func generateClosingBracketIndentation() {
    let manager = NamespaceManager()

    // For a namespace at level 3, the closing bracket should be at level 2
    let closingIndent = manager.indentForClosingBracket(level: 3)
    #expect(closingIndent == "    ") // 2 spaces * 2 levels
  }
}
