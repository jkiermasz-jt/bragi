import Foundation

struct LprojParser {
    func parseDirectory(at path: String) throws -> [Translation] {
        let fileManager = FileManager.default
        var translations: [Translation] = []
        
        // Get all .strings files in the directory
        let contents = try fileManager.contentsOfDirectory(atPath: path)
        let stringsFiles = contents.filter { $0.hasSuffix(".strings") }
        
        for fileName in stringsFiles {
            let filePath = (path as NSString).appendingPathComponent(fileName)
            if let dict = NSDictionary(contentsOfFile: filePath) as? [String: String] {
                let fileTranslations = dict.map { key, value in
                    Translation.singular(SingularTranslationData(key: key, value: value))
                }
                translations.append(contentsOf: fileTranslations)
            }
        }
        
        return translations
    }
} 