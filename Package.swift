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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241012/TensorFlowLiteC.xcframework.zip", checksum: "3b8ece9541ce7d0a13ddc6bbcbe79a6b4623e2c47b9ff9d31d740a15639068e8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241012/TensorFlowLiteCCoreML.xcframework.zip", checksum: "da206e9864f9016de1c38f3bafb1f3f8f815b9070ad80536b5ecbb6ac1949f79"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241012/TensorFlowLiteCMetal.xcframework.zip", checksum: "157f57f725354b576b56eb6af4066606804c60d1527ef51e162a01cbaa724690"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
