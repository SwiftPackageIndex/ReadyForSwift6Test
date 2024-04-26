// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "ReadyForSwift6Test",
    platforms: [.iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "ReadyForSwift6Test", targets: ["ReadyForSwift6Test"]),
    ],
    targets: [
        .target(name: "ReadyForSwift6Test", swiftSettings: [.enableExperimentalFeature("StrictConcurrency")]),
    ]
)
