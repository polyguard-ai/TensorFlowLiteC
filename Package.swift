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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241108/TensorFlowLiteC.xcframework.zip", checksum: "663608a012a61ea951aeb491d5bcb044fa74f03cb9b8a0c304a19e40e15ef3d9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fdee4697938ff5ab535a4be125b4b4461b325fba0b95cbb355b581af0470b69a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241108/TensorFlowLiteCMetal.xcframework.zip", checksum: "9d8bcad7f6c6beef429ae0fc36f47cd9b93e1e430760e30f5ec79d7437cf8a1d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
