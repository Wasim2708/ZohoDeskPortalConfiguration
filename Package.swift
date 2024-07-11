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
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/3.0.13/ZohoDeskPortalConfiguration.zip", checksum: "a7ae0ed6b75f02448af28179e9e4ea54d8da4dc97c689bbd032cfb624e35a560")
    ]
)
