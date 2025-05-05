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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250504/TensorFlowLiteC.xcframework.zip", checksum: "25b33d98f16562342c5b0df9cc7a4f37088e16cf6bdf75324e767c5934152e91"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250504/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5326ea99de333a1c1528c290afc54cd7d074c234fbfdc0b81a37ace136b23c94"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250504/TensorFlowLiteCMetal.xcframework.zip", checksum: "1facb9acea585d248b4f37db0fdf01fdc7cd12ebc0437d8f933b29c530406200"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
