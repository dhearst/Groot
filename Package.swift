// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Groot",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Groot",
            targets: ["Groot"]
        ),
        .library(
            name: "GrootObjC",
            targets: ["GrootObjC"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Groot",
            dependencies: [
                "GrootObjC"
            ]
        ),
        .target(
            name: "GrootObjC",
            dependencies: [],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("./Private")
            ]
        ),
        .testTarget(
            name: "GrootTests",
            dependencies: [
                "GrootObjC"
            ]
        ),
    ]
)
