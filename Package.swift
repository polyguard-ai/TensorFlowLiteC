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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241208/TensorFlowLiteC.xcframework.zip", checksum: "e3f7d3a5b8abe8f80e7a1848fe513995f5236e7875f44072e29a37bc48512c29"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bd6223bf12509d94099e8877e4996be58531510dccd4a98e6c67a69725360655"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241208/TensorFlowLiteCMetal.xcframework.zip", checksum: "d0f9c56df51dfcf8e6d23700707d2493d9adb17e1cbbff36fbba232d2c81ec12"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
