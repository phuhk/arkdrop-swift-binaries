// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ArkDrop",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ArkDrop",
            targets: ["ArkDrop"]
        ),
    ],
    targets: [
        .target(
            name: "ArkDrop",
            dependencies: ["arkdrop_uniffiFFI"],
            path: "Sources"
        ),
        .binaryTarget(
            name: "arkdrop_uniffiFFI",
            url: "https://github.com/phuhk/arkdrop-swift-binaries/releases/download/v1.0.0-swift-bindings/arkdrop_uniffiFFI.xcframework.zip",
            checksum: "dbe484a8a3a5bb5d812426e3f7454db83cf823119714b0e18b50e81fb1a8343a"
        )
    ]
)
