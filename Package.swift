// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZohoDeskPortalConfiguration",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalConfiguration",
            targets: ["ZohoDeskPortalConfigurationTargets"]),
    ],
        dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", exact: "1.26.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "ZohoDeskPortalConfigurationTargets",
                dependencies: [
                    .target(name: "ZohoDeskPortalAPIKit", condition: .when(platforms: [.iOS])),
                    .target(name: "ZohoDeskPortalConfiguration", condition: .when(platforms: [.iOS])),
                    .target(name: "ZDPDataBridge", condition: .when(platforms: [.iOS])),
                    .target(name: "ZDPUIBuilder", condition: .when(platforms: [.iOS]))
                ]),
        .binaryTarget(name: "ZohoDeskPortalAPIKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalAPIKit/3.0.9/ZohoDeskPortalAPIKit.zip", checksum: "e71aa0a89ae397e43b47d67d1c2eca59ca2fc2f9fdd1a0d84422408bc73b4ac1"),
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/3.0.9/ZohoDeskPortalConfiguration.zip", checksum: "7493243c48bb88b05dc885f85778d57a40be60d58a71c0cbb1bd7e3b8dca8059"),
        .binaryTarget(name: "ZDPDataBridge", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPlatformDataBridge/iOS/1.0.15/ZDPDataBridge.zip", checksum: "e65e32bb7ffa5764a3558a8004f1d030acce55d730e3ec1e8651b628f9b4e2f0"),
        .binaryTarget(name: "ZDPUIBuilder", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPlatformUIKit/iOS/1.0.15/ZDPUIBuilder.zip", checksum: "fae35ba49a6b5780cfa190f4a2b3939a5996c3c66e4829a69a690899daa93581")
    ]
)
