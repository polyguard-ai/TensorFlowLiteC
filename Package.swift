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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250420/TensorFlowLiteC.xcframework.zip", checksum: "b72810071c98f311f63a88d42427349664654e090cd06d8cb301889b3db5e675"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250420/TensorFlowLiteCCoreML.xcframework.zip", checksum: "12e14340a0a7a6d8812a9f6e3fa63ebc06da0276c6bef872fdaac7ba3b639ff6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250420/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b54b865f145b399dc549807d18408b48cc292ff88a249402688121ef6ec86da"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
