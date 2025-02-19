import Foundation

struct LprojParser {
    func parseDirectory(at path: String) throws -> [Translation] {
        let fileManager = FileManager.default
        var translations: [Translation] = []
        
        // Get all .strings files in the directory
        let contents = try fileManager.contentsOfDirectory(atPath: path)
        let stringsFiles = contents.filter { $0.hasSuffix(".strings") }
        
        for fileName in stringsFiles.sorted() {
            let filePath = (path as NSString).appendingPathComponent(fileName)
            if let dict = NSDictionary(contentsOfFile: filePath) as? [String: String] {
                let fileTranslations = dict.map { key, value in
                    Translation.singular(SingularTranslationData(key: key, value: value))
                }
                translations.append(contentsOf: fileTranslations)
            }
        }
        
        // Sort translations by their full key path
        return translations.sorted { lhs, rhs in
            switch (lhs, rhs) {
            case (.singular(let lhsData), .singular(let rhsData)):
                // Split keys into components and compare them
                let lhsComponents = lhsData.key.split(separator: "_")
                let rhsComponents = rhsData.key.split(separator: "_")
                
                // Compare component by component
                let minCount = min(lhsComponents.count, rhsComponents.count)
                for i in 0..<minCount {
                    if lhsComponents[i] != rhsComponents[i] {
                        return lhsComponents[i] < rhsComponents[i]
                    }
                }
                // If all components so far are equal, shorter key comes first
                return lhsComponents.count < rhsComponents.count
            }
        }
    }
} 