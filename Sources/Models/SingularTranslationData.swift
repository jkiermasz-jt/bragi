import Foundation

struct SingularTranslationData: Hashable {
  let key: String
  let value: String
  let table: String

  init(key: String, value: String, table: String) {
    self.key = key
    self.value = value
    self.table = table
  }
}
