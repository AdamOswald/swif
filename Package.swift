// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "GitignoreIO",
    dependencies: [
        .package(
            url: "https://github.com/vapor/vapor.git",
            from: "4.69.2"
        ),
        .package(
            url: "https://github.com/vapor/leaf.git",
            from: "4.2.4"
        ),
        .package(
            url: "https://github.com/vapor-community/lingo-vapor.git",
            from: "4.4.0"
        )
    ],
    targets: [
        .target(
            name: "App",
            dependencies: ["Vapor", "Leaf", "LingoVapor"],
            exclude: ["Config", "Localization", "Public", "Resources", "data", "wiki"]
        ),
        .target(
            name: "Run",
            dependencies: ["App"],
            exclude: ["Config", "Localization", "Public", "Resources", "data", "wiki"]
        ),
        .testTarget(
            name: "AppTests",
            dependencies: ["App"]
        )
    ]
)
