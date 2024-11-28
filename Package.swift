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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241127/TensorFlowLiteC.xcframework.zip", checksum: "c9889b7c00357f619a1a1e9e03703c2bb88a0c417241412723aeb9e45c12d06b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "54893ce3ea7a351b95f313d1c4599e634bd1d732abf881d13f3b699bd86c5584"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241127/TensorFlowLiteCMetal.xcframework.zip", checksum: "54daeaff8655ea1b7df49e665eb9bb9f02a5477be0b43d8720b949426167c902"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
