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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250514/TensorFlowLiteC.xcframework.zip", checksum: "3d727830a29ce0e6fe319adffe9cf6c80d27b20483fd742393a149eec819a99d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250514/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1018c856009d837f88820bc2221ea0427eed8bd090450ccf61558c8c1c26f21c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250514/TensorFlowLiteCMetal.xcframework.zip", checksum: "597738cb0cf19fdd20edfae067d557119cc5e5a5ec89fae65744da979bf4080f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
