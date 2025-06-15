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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250614/TensorFlowLiteC.xcframework.zip", checksum: "d3696fa1769c3786f8c4a933b3738935c667062ad905c4c81aaa1d34042264d9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250614/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cdd308cfacec23f0a161a4121ce4dd18273a6f18613618572b6ab2ad323479fb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250614/TensorFlowLiteCMetal.xcframework.zip", checksum: "188b3088af453bb837a24b8b21ef16b2c4f8a32ea40352001263c48cf5a3e1c7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
