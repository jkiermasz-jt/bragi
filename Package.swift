// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "bragi",
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.5.0"),
    .package(url: "https://github.com/giginet/swift-testing-revolutionary", from: "0.1.0"),
  ],
  targets: [
    .executableTarget(
      name: "bragi",
      dependencies: [
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
      ]
    ),
    .testTarget(
      name: "bragiTests",
      dependencies: ["bragi"]
    ),
  ]
)
