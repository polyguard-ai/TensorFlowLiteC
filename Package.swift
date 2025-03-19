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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250318/TensorFlowLiteC.xcframework.zip", checksum: "00ffb1fa92c75d728c7111eba587ab7e12d50cd85720b28c0f55c9c099b8c11a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250318/TensorFlowLiteCCoreML.xcframework.zip", checksum: "76b2723a31b8b4d1c08bed6a5bbe0da56fc0e7f7cd26b217e1f86014e59cba40"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250318/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb440295c11db09d5e321c09da33a1d3a6d20325cee2306ac5f34792fee1b0a8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
