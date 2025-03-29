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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250328/TensorFlowLiteC.xcframework.zip", checksum: "8ad085de21a905016aa7cadf9a9e966f7c126c468f0fe7b0739c8cbf08a2beb3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250328/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d4f7974a921c4f48571c0fb2f3a3186011c1d7612de3c132d1b4d926ab81de19"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250328/TensorFlowLiteCMetal.xcframework.zip", checksum: "b0461d414d455e8fa065d236567a6608c6f914854762da6d88b191d5a7c26919"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
