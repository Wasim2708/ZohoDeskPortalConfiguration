// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ZohoDeskPortalConfiguration",
    products: [
        .library(
            name: "ZohoDeskPortalConfiguration",
            targets: ["ZohoDeskPortalConfiguration"])
    ],
    targets: [
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/4.0.0-beta.2/ZohoDeskPortalConfiguration.zip", checksum: "d22cebc82a2efc4ff0490c3329cfa57025658f2e11b7b8babdba6d6a2615b757")
    ]
)
