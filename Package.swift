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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241102/TensorFlowLiteC.xcframework.zip", checksum: "ecb61cf527fc4ca0312e8c563c4cdf30ab785252a931751ea3828b833bb872c9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "859d61a7e523b01c201d3f7f0cbdffd99eace0c9ef2c6855a29ca9c8803adaa7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241102/TensorFlowLiteCMetal.xcframework.zip", checksum: "b2538486d1f3b8a1c3a1a3fcc1f88663adda9b98263ea0cbd9d3c50b5d1d5e3f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
