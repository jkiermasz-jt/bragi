// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "bragi",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.5.0"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "5.0.6"),
    ],
    targets: [
        .executableTarget(
            name: "bragi",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Yams", package: "Yams"),
            ]
        ),
    ]
)
