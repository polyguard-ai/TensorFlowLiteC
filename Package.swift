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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240926/TensorFlowLiteC.xcframework.zip", checksum: "5b8d84bc617eea3b8c2e02613a7105c6c402d7e93aac763943969989e2edc46a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240926/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cf256e504ac2d279b7afd2776774bba77f59936f5bb8e4376123ee4bd4cd21a1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240926/TensorFlowLiteCMetal.xcframework.zip", checksum: "b56ef3c93b919ed8d21daf5fbc93ff10363e467da35e225050e35891b39ce169"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
