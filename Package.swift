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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250412/TensorFlowLiteC.xcframework.zip", checksum: "dd42d203d30887ea0333f71883904a6c8ceb174db304029a82e0b85ce93b2dfa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250412/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7d7fb6a4aa75f83de514ba7a1d010bd9d2193dd7f7a17bb00cecfb0d96ae83f8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250412/TensorFlowLiteCMetal.xcframework.zip", checksum: "7f06a9115d76d436d58d569c4c2103c74859e408b0e5ac8f87cc1a9be8c81f6b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
