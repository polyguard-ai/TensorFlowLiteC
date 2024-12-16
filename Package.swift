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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241215/TensorFlowLiteC.xcframework.zip", checksum: "64ee53070f239aa3231ddad9f5f138d49beb83c7129a7d1c4f18801f0d57a398"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e7f88d70dae45caedc815d3fb8c262fcbc112283eec5a707fe21cd69eed577ec"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241215/TensorFlowLiteCMetal.xcframework.zip", checksum: "ecae69707ef724ff02211395e23597039945da7e1b29c238072eb8f074493ae3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
