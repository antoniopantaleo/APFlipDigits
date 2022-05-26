// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "APFlipDigits",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "APFlipDigits",
            targets: ["APFlipDigits"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "APFlipDigits",
            dependencies: []),
        .testTarget(
            name: "APFlipDigitsTests",
            dependencies: ["APFlipDigits"]),
    ]
)
