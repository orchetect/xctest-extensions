// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "xctest-extensions",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(name: "XCTestExtensions", targets: ["XCTestExtensions"])
    ],
    targets: [
        .target(name: "XCTestExtensions"),
        .testTarget(name: "XCTestExtensionsTests", dependencies: ["XCTestExtensions"])
    ]
)
