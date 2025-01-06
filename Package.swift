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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250105/TensorFlowLiteC.xcframework.zip", checksum: "fec899a7dfe506a431b0593dc5f59ce0e42a5455627b279d18242bfc01413080"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8fd066265f7646433a0b084cfc4149061ac5f7a8d82d7eb590c2bacbb41dff33"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250105/TensorFlowLiteCMetal.xcframework.zip", checksum: "85065973c9bc926af37831dea83c2eda4d7da1f72b5b8515bc21bb869eec49dd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
