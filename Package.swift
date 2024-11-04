// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ZohoDeskPortalConfiguration",
    products: [
        .library(
            name: "ZohoDeskPortalConfiguration",
            targets: ["ZohoDeskPortalConfiguration", "ZohoDeskPortalConfigurationPackage"])
    ],
    dependencies: [
        .package(url: "https://github.com/LakshmiChidambaranathan/ZohoDeskPlatformUIKit.git", exact: "0.0.1"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalAPIKit.git", exact: "4.0.1")
    ],
    targets: [
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/4.0.1/ZohoDeskPortalConfiguration.zip", checksum: "3090843a8ee8013a986fdaa9528ecc0eca7c4c189a54b3b8e28ca9cf42bb1a4d"),
        .target(
            name: "ZohoDeskPortalConfigurationPackage",
            dependencies: [
                .product(name: "ZohoDeskPlatformUIKit", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZDMediaPickerSDK", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZohoDeskPlatformDataBridge", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZohoDeskPortalAPIKit", package: "ZohoDeskPortalAPIKit")
            ]
        ),

    ]
)
