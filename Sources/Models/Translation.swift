import Foundation

enum Translation: Hashable {
    case singular(SingularTranslationData)
    case plural(PluralizedTranslationData)
    
    var key: String {
        switch self {
        case .singular(let data): return data.key
        case .plural(let data): return data.key
        }
    }
} 