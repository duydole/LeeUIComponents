// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LeeUIComponents",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LeeUIComponents",
            targets: ["LeeUIComponents"]),
        .executable(name: "ExampleApp",
                    targets: ["ExampleApp"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LeeUIComponents", dependencies: [
                "Alamofire"
            ]),
        .target(
            name: "ExampleApp",
            dependencies: ["LeeUIComponents"],
            path: "Examples/ExampleApp"),
        .testTarget(
            name: "LeeUIComponentsTests",
            dependencies: ["LeeUIComponents"]),
    ]
)
