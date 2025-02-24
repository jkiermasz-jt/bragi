# Bragi

Bragi, named after the Norse god of poetry and eloquence, is a Swift command-line tool that generates type-safe localization string constants from `.lproj` directories. Just as Bragi was known for his wisdom and perfect use of words in Norse mythology, this tool ensures your app's localizations are perfectly structured and type-safe.

## Installation

The easiest way to install Bragi is to download the pre-built binary from the [Releases](https://github.com/YOUR_REPOSITORY/bragi/releases) page.

## Usage

```bash
bragi --path /path/to/your.lproj --output /path/to/output/L10n.swift
```

### Options

- `--path, -p`: Path to your `.lproj` directory containing `.strings` and `.stringsdict` files
- `--output, -o`: Path where the generated Swift file should be created
- `--version`: Print the version number
- `--help`: Print help information

## Features

- Generates type-safe Swift enums for all your localization strings
- Supports both singular and pluralized strings (`.strings` and `.stringsdict` files)
- Maintains nested namespaces based on key hierarchy
- Handles various format specifiers (`%@`, `%d`, `%f`, etc.)
- Supports positional arguments
- Preserves original formatting and fallback values

## Generated Code Example

For a `.strings` file containing:

```
// Localizable.strings
"Absence_Conflicts_Title" = "Conflicts";
"Absence_Conflicts_Subtitle" = "Found %d conflicts";
```

Bragi will generate:

```swift
enum L10n {
    enum Absence {
        enum Conflicts {
            static let title = tr("Localizable", "Absence_Conflicts_Title", fallback: "Conflicts")
            static func subtitle(_ count: Int) -> String {
                tr("Localizable", "Absence_Conflicts_Subtitle", count, fallback: "Found %d conflicts")
            }
        }
    }
}
```

## Requirements

- Swift 6.0.0 or later
- macOS for development
