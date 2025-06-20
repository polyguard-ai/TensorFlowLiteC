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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250619/TensorFlowLiteC.xcframework.zip", checksum: "e20202d8a52a5c6a000853a11867fd11d4a323eb5b9742b5d988e8367f013584"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250619/TensorFlowLiteCCoreML.xcframework.zip", checksum: "55132fa98b8399fc5c31eb766aff4c3949504776e8e428fa251e0f683be77142"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250619/TensorFlowLiteCMetal.xcframework.zip", checksum: "8862bc5d50fb605ef4762639de6684b7aef22795b0971f5c2eb0bafb27e6e565"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
