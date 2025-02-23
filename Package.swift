// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XcodebuildNvimPreview",
    platforms: [
        .macOS(.v14),
        .iOS(.v14),
        .tvOS(.v14),
        .watchOS(.v6),
        .visionOS(.v1)
    ],
    products: [
        .library(name: "XcodebuildNvimPreview", targets: ["XcodebuildNvimPreview"])
    ],
    targets: [
        .target(name: "XcodebuildNvimPreview")
    ]
)
