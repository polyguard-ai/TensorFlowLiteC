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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250108/TensorFlowLiteC.xcframework.zip", checksum: "894836b99a4f3a69feb48bb2615a9fe5b1c1c5e206777ce66e8ec4ad5f5c8f64"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dfa82388fc36055add3ee60608b5baa09b47c788ac3ec1fb4e7c263ec3f9bca8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250108/TensorFlowLiteCMetal.xcframework.zip", checksum: "17d9835bf95e20f63e7d6cd3db5b447b47f3f529a32b19dacd028a8fbfe88c33"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
