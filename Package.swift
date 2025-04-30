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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250429/TensorFlowLiteC.xcframework.zip", checksum: "2cb2b86fd375d90805f457283f74319319450c6ac7321b51fdb8063cb78b2918"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250429/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fa8e316368b66ec3b7d6417c12057485a10ad83006354bc441cac4b2aa8d3439"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250429/TensorFlowLiteCMetal.xcframework.zip", checksum: "f771ff277e2eed16e6a1356fefb35088f551e25c0e5fd55a00ba403a7f9a3167"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
