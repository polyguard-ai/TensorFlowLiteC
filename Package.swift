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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250307/TensorFlowLiteC.xcframework.zip", checksum: "a1d1ae3698e5510ce1f4dbf0e6fc67b291670ad0b0cd3cefc1ac04c89585a9d1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250307/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6fe51083d0290fe7ccf3b60b22e312d36047823a0cc3de704241ae2916b62e76"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250307/TensorFlowLiteCMetal.xcframework.zip", checksum: "c2e1f4165e461edd9ec172120a72239251c8f6d0419329c177d1b535b123de60"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
