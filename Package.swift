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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241125/TensorFlowLiteC.xcframework.zip", checksum: "0bb6f56d11d2da6dbea7b564477674e63bad8ea174e1a0876cf501888750bee8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e0558289234d7d177d30299573e4313a11c45c002a3e44f18ee1c125a1cf6ff2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241125/TensorFlowLiteCMetal.xcframework.zip", checksum: "26e3964d46af80825d923f68c96e49b93e892189fb9f545813d0556c4dffdec9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
