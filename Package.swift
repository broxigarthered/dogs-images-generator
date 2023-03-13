// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "dogs-images-generator",
    platforms: [
        .macOS(.v12), .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "dogs-images-generator",
            targets: ["dogs_images_generator"]),
    ],
    targets: [
        .binaryTarget(
            name: "dogs_images_generator",
            path: "./Sources/dogs_images_generator.xcframework"
        )
    ]
)
