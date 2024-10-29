// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ZohoDeskPortalConfiguration",
    products: [
        .library(
            name: "ZohoDeskPortalConfiguration",
            targets: ["ZohoDeskPortalConfiguration", "ZohoDeskPortalAPIKit", "ZDMediaPickerSDK", "ZohoDeskPlatformDataBridge", "ZohoDeskPlatformUIKit"])
    ],
    targets: [
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/4.0.1/ZohoDeskPortalConfiguration.zip", checksum: "a7ae0ed6b75f02448af28179e9e4ea54d8da4dc97c689bbd032cfb624e35a560"),
        .binaryTarget(name: "ZohoDeskPortalAPIKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalAPIKit/4.0.1/ZohoDeskPortalAPIKit.zip", checksum: "5ba45cf0a22f5c3e4279ff87a580ed89f413e8001cbfe354e321c2cb98952650"),
        .binaryTarget(name: "ZDMediaPickerSDK", url: "https://maven.zohodl.com/ZohoDesk/ZDMediaPickerSDK/iOS/1.0.8/XCFramework.zip", checksum: "2cbe82433ca5ecad2f993d2d45aa99e0e9f7e18a3175cff31178d671f13d3067"),
        .binaryTarget(name: "ZohoDeskPlatformDataBridge", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPlatformDataBridge/iOS/2.0.0-beta.9/ZDPDataBridge.zip", checksum: "70d5c980cc032d060b57b8852dae3bb9341ca8d25b6cbd224ccef5016e623305"),
        .binaryTarget(name: "ZohoDeskPlatformUIKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPlatformUIKit/iOS/2.0.0-beta.9/ZDPUIBuilder.zip", checksum: "9b4eb139697d5b54f5a8a41cbba4dc3317ee80f6f0a9f15564e4d85954ec4420")
    ]
)
