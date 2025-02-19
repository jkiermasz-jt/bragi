import Foundation

struct SingularTranslationData: Hashable {
    let key: String
    let value: String
    
    init(key: String, value: String) {
        self.key = key
        self.value = value
    }
} 