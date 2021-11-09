// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "{{ name }}",
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
