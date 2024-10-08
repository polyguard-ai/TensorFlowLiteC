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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241007/TensorFlowLiteC.xcframework.zip", checksum: "5b2633e189185092705f243d677321e51ce6dfef5913fdee68c131ad9ec39c97"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241007/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3dc04733e4185227ea6e38fdbf02ba442eba6e68f74f877e1cfb64989de636c1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241007/TensorFlowLiteCMetal.xcframework.zip", checksum: "9480cc461428c8b8dd99a169e6f7b0a21ccee0546380bf83f0b733aef2117939"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
