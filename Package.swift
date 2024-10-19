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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241018/TensorFlowLiteC.xcframework.zip", checksum: "8fbd7ffffdb93f4ab3c06012c4d474eddc98ffd1dca6cdbf92177def41b016b8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241018/TensorFlowLiteCCoreML.xcframework.zip", checksum: "40ac0c441ec4c828cffd120dd430b9b5695c684112a904c167650c73a013e570"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241018/TensorFlowLiteCMetal.xcframework.zip", checksum: "b0c90876e8bdebafc83683fcb1c569cdfef2feea64c879b845bf2c3a78e6bebd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
