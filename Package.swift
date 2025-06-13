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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250612/TensorFlowLiteC.xcframework.zip", checksum: "fd7623ced7060159009418fb2b899632f46434ccb35d2fe96c9139e371e43d18"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250612/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f25bd398877e4bed9320d93c95f80667b9ac1b14c4f008f3d735119dbdc4fad0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250612/TensorFlowLiteCMetal.xcframework.zip", checksum: "f1a1ffce2eaebe2a7eafa81ac4d8faf7b173f6c3a5546e1eb5e90cb9eca5ead8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
