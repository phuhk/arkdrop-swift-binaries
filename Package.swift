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
            url: "https://github.com/phuhk/arkdrop-swift-binaries/releases/download/v1.0.0-arkdrop-swift-binaries/arkdrop_uniffiFFI.xcframework.zip",
            checksum: "6c7db0e8f63e6f1362291a16d6d32ccc965bfdb49251efccd27ad37608d37d8c"
        )
    ]
)
