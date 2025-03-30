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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250329/TensorFlowLiteC.xcframework.zip", checksum: "c9d0b22acfaa518d1edbaece37f6253a4c1d8750fa083ff5d0edd936189c19a8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250329/TensorFlowLiteCCoreML.xcframework.zip", checksum: "67f9ca17281e9e0aa93b0e14210a310a69bebed3c9098e74391b6a67fdbe4499"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250329/TensorFlowLiteCMetal.xcframework.zip", checksum: "0c9409c70a85a243715529545ae8e3aafe63f7a022a5e839a393fdcf92a9baa0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
