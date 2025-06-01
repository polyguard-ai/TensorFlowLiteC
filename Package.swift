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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250531/TensorFlowLiteC.xcframework.zip", checksum: "b140a2c472e5c5281bafdf9a63bbdbb1c996e4f01e12f53d2019f810ac9addd2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250531/TensorFlowLiteCCoreML.xcframework.zip", checksum: "577b67c141c6ab175a6a70355418caad1fd929d4bdfe1dd468e109c4a6b89a95"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250531/TensorFlowLiteCMetal.xcframework.zip", checksum: "b55f1b2f6caa9b457971ef79067c060bde6ae069c9f4d3a29686b883a3f655f2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
