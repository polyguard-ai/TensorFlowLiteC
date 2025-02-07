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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250206/TensorFlowLiteC.xcframework.zip", checksum: "18ef11266ad958bb72798b165dac10ec5809ef8fe1b6029eb124474088c2cda4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fca47ac9d6731de0d819185592962526a65596a01fd0e7c0c9c78eec35d1dad3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250206/TensorFlowLiteCMetal.xcframework.zip", checksum: "5b535c5239ac91bf3de32fa32a6fb4af77efca423f15c445c077e26dfed1b80b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
