// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Root",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "Root", targets: ["Root"]),
    ],
    dependencies: [
        .package(url: "https://github.com/uber/needle.git", .upToNextMajor(from: "0.17.0")),
    ],
    targets: [
        .target(name: "Root", dependencies: [
            "Core",
            "List",
            "Detail",
            "API",
            .product(name: "NeedleFoundation", package: "needle")
        ]),
        .target(name: "Domain", dependencies: []),
        .target(name: "API", dependencies: ["Core"]),
        .target(name: "Core", dependencies: ["Domain"]),
        .target(name: "List", dependencies: ["Core"]),
        .target(name: "Detail", dependencies: ["Core"]),
        .testTarget(name: "RootTests", dependencies: ["Root"]),
    ]
)
