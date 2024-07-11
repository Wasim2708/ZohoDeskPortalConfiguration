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
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/3.0.12/ZohoDeskPortalConfiguration.zip", checksum: "ec63613ff9c0a2a941a30e6d8ee5584efb43534fd757af18806bd0bc63142daf")
    ]
)
