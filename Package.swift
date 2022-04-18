// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "{{ name }}",
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    dependencies: [
        .package(name: "chaqmoq", url: "https://github.com/chaqmoq/chaqmoq.git", .branch("master"))
    ],
    targets: [
        .executableTarget(name: "App", dependencies: [
            .product(name: "Chaqmoq", package: "chaqmoq")
        ]),
        .testTarget(name: "AppTests", dependencies: [
            .target(name: "App")
        ])
    ],
    swiftLanguageVersions: [.v5]
)
