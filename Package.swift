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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250426/TensorFlowLiteC.xcframework.zip", checksum: "e2cca423df6da339c74e644358577cb6d4dde0ec9f63cb54a9e6fa61aa0185b6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250426/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3d4a49db03c31093219903f3d92192ce94d840cd5cfc83123c1c09f774c1cbc7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250426/TensorFlowLiteCMetal.xcframework.zip", checksum: "92957a34ddb684e2ef093b931ae9f46e096041f54b0267e1a00f5115359276aa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
