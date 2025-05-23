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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250522/TensorFlowLiteC.xcframework.zip", checksum: "dcecbc2d09a7da072ebb72b9809777941c0f7d1f387888df15eb286a652ca2f7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250522/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4b34db35bc0ce6f81443f90e1caa50bd404c6871c3864736d2684f7823e21572"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250522/TensorFlowLiteCMetal.xcframework.zip", checksum: "6a562a90da42f1e098dfc41f68b5b7dcec7086df31a8e1395f4e917529d068ae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
