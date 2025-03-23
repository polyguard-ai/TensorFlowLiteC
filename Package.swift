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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250322/TensorFlowLiteC.xcframework.zip", checksum: "d33661295146f9c16027d455d3e8991eae9b6d9f777d2da1018235803f1c1c8b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250322/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9783196391bbb94678be3c60585f0607c09043db67bb79a92b7808103bc55eee"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250322/TensorFlowLiteCMetal.xcframework.zip", checksum: "dc00d24e363f132e9775d0ba4fb3a1e3fc467955466b0f71bee4b446af70a131"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
