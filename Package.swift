// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

import PackageDescription

let package = Package(
    name: "ZohoDeskPortalConfiguration",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalConfiguration",
            targets: ["ZohoDeskPortalConfigurationTargets"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "ZohoDeskPortalConfigurationTargets",
                dependencies: [
                    .target(name: "ZohoDeskPortalAPIKit", condition: .when(platforms: [.iOS])),
                    .target(name: "ZohoDeskPortalConfiguration", condition: .when(platforms: [.iOS]))
                ]),
        .binaryTarget(name: "ZohoDeskPortalAPIKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalAPIKit/3.0.9/ZohoDeskPortalAPIKit.zip", checksum: "e71aa0a89ae397e43b47d67d1c2eca59ca2fc2f9fdd1a0d84422408bc73b4ac1"),
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/3.0.9/ZohoDeskPortalConfiguration.zip", checksum: "7493243c48bb88b05dc885f85778d57a40be60d58a71c0cbb1bd7e3b8dca8059")
    ]
)
