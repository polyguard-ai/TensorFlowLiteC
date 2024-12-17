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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241216/TensorFlowLiteC.xcframework.zip", checksum: "821265d1225bd4909f7d2a5ff669f6e28afccdee1befa073c3f2a7f8e93a9994"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241216/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3ff0a9b7b6d1cba43c2d4f2fe7640b2630e31f2056de9582a7a36b3bc907b71e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241216/TensorFlowLiteCMetal.xcframework.zip", checksum: "33be9c1b6d2e8ac890534a5d425536af9f994bc973bc5c0432ce82e3029387f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
