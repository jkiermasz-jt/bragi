struct NamespaceManager {
    private let separator: String
    private let indentation: Int
    
    init(separator: String = Configuration.keySeparator, 
         indentation: Int = Configuration.indentation) {
        self.separator = separator
        self.indentation = indentation
    }
    
    func generateNamespaces(for key: String) -> [String] {
        let components = key.components(separatedBy: separator)
        return Array(components.dropLast())
    }
    
    func indent(_ level: Int) -> String {
        String(repeating: " ", count: level * indentation)
    }
} 