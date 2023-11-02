// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "RudderBraze",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "RudderBraze", targets: ["RudderBraze"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rudderlabs/rudder-sdk-ios.git", from: "2.2.4"),
        .package(url: "https://github.com/braze-inc/braze-swift-sdk", from: "7.1.0"),
    ],
    targets: [
        .target(
            name: "RudderBraze",
            dependencies: [
                .product(name: "Rudder", package: "rudder-sdk-ios"),
                .product(name: "BrazeKitCompat", package: "braze-swift-sdk"),
            ],
            path: "Sources",
            sources: ["Classes"],
            publicHeadersPath: "SDKInfo"
        )
    ]
)
