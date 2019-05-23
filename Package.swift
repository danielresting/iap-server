// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "IAPServer",
    products: [
        .executable(
            name: "IAPServer",
            targets: ["IAPServerRun"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor", from: "3.0.0"),
        .package(url: "https://github.com/yonaskolb/Mint.git", from: "0.12.0"),
    ],
    targets: [
        .target(name: "IAPServerRun", dependencies: ["IAPServer"]),
        .target(
            name: "IAPServer",
            dependencies: ["Vapor"]),
        .testTarget(
            name: "IAPServerTests",
            dependencies: ["IAPServer"]),
    ]
)
