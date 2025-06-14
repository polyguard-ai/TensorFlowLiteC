// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250613/TensorFlowLiteC.xcframework.zip", checksum: "1995b742261a6e5d2389bf78bfd285e58a413ae85e041a19e32add3741890789"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250613/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3571c415251292ffe4153a3f4f1d8d16e9e2c1bf461337a3f73a2e3f2deff0e1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250613/TensorFlowLiteCMetal.xcframework.zip", checksum: "61aac46b7198cc40941dd790940e339f425e5b854ee2f7c4b9250d3b94f16e60"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
