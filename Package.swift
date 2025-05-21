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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250520/TensorFlowLiteC.xcframework.zip", checksum: "9ade4ebe4787217482218573346e2a8c4969d7a42ae006fa7a0cfb0501cfd5ce"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250520/TensorFlowLiteCCoreML.xcframework.zip", checksum: "908990b31fbe919a0e8b794304e8e9bb198bc028ecf0ee8a909549a904767c8d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250520/TensorFlowLiteCMetal.xcframework.zip", checksum: "9101c7c1bca7b5dd015d40dd6922a2f06868fa1e8392f016ca983fdf9ecf0f38"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
