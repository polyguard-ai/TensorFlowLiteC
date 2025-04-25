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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250424/TensorFlowLiteC.xcframework.zip", checksum: "72346ea7b4ca4064b12ebb8979142a40bfdc93587290ad0ea669d3d2a6d16e12"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250424/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bfdbc263e93462eb08bb3c7c4d3c6d83eb30d8bffa67fce27c2716936a3b07b1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250424/TensorFlowLiteCMetal.xcframework.zip", checksum: "d2327e80c79c6c8cc47f68e85e7849850f9b83a1879eb4d82050831e2b58b663"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
