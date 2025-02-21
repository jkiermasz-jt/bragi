struct CodeGenerator {
    private let namespaceManager: NamespaceManager
    
    init(namespaceManager: NamespaceManager = NamespaceManager()) {
        self.namespaceManager = namespaceManager
    }
    
    func generateAnchor(_ anchor: TranslationAnchor, indentLevel: Int) -> String {
        let indent = namespaceManager.indent(indentLevel)
        
        if anchor.isConstant {
            return """
            
            \(indent)static let \(anchor.name) = tr("\(anchor.table)", "\(anchor.key)", fallback: "\(anchor.fallback)")
            """
        }
        
        let parametersList = anchor.parameters.map { 
            "_ \($0.name): \($0.type)" 
        }.joined(separator: ", ")
        
        let argumentsList = anchor.parameters.map { param in
            param.type == "Any" ? "String(describing: \(param.name))" : param.name
        }.joined(separator: ", ")
        
        return """
        
        \(indent)static func \(anchor.name)(\(parametersList)) -> String {
        \(indent)    tr("\(anchor.table)", "\(anchor.key)", \(argumentsList), fallback: "\(anchor.fallback)")
        \(indent)}
        """
    }
} 