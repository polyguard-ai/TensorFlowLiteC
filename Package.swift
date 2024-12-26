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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241225/TensorFlowLiteC.xcframework.zip", checksum: "413263dd245f9e372d3c0a35924918f0280b4387d942fab4f843d14d821edf26"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7edb6300ffcc94e3a3bce15f4b8b5207220dc8f7b10cb214be58ef7b86bb6f31"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241225/TensorFlowLiteCMetal.xcframework.zip", checksum: "ebfc585ac8e2ac3fdddede980c29a074ae0cdcf8f71fd3a7f6538bff16ac3c7a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
