enum Configuration {
  /// Number of spaces used for each level of indentation
  static let indentation = 2

  /// Character used to separate components in translation keys
  static let keySeparator = "_"

  /// Default access level for generated code (enums, properties, functions)
  static let accessLevel: AccessLevel = .public
}

extension Configuration {
  enum AccessLevel: String {
    case `internal`
    case `public`
    case package

    var prefix: String {
      switch self {
      case .internal: ""
      case .public: "public "
      case .package: "package "
      }
    }
  }
}
