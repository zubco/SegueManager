// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SegueManager",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SegueManager",
            targets: ["SegueManager"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mac-cain13/R.swift.git", .exact("6.1.0")),
    ],
    targets: [
        .target(
            name: "SegueManager",
            dependencies: [.product(name: "rswift", package: "R.swift"),],
            path: "src/ios"),
    ]
)
