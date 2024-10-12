// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JSONCodable",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "JSONCodable",
            targets: ["JSONCodable"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "JSONCodable",
            dependencies: []),
    ]
)
