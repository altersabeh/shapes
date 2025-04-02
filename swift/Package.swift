// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Shapes",
    products: [
        .library(
            name: "Shapes",
            targets: ["Shapes"]
        ),
        .executable(
            name: "shape-app",
            targets: ["ShapesApp"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", from: "1.4.3"),
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.58.2")
    ],
    targets: [
        .target(
            name: "Shapes",
            dependencies: [
                "ShapesClientShell"
            ]
        ),
        .target(
            name: "ShapesBaseCommons"
        ),
        .target(
            name: "ShapesBaseModels",
            dependencies: ["ShapesBaseCommons"]
        ),
        .target(
            name: "ShapesClientShell",
            dependencies: ["ShapesBaseModels"]
        ),
        .executableTarget(
            name: "ShapesApp",
            dependencies: ["Shapes"]
        ),
        .testTarget(
            name: "ShapesTests",
            dependencies: [
                "Shapes",
                "ShapesTestsFixtures",
            ]
        ),
        .testTarget(
            name: "ShapesTestsFixtures",
            dependencies: ["ShapesBaseModels"]
        ),
    ]
)
