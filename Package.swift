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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250204/TensorFlowLiteC.xcframework.zip", checksum: "29bb0e2546f25972d18a30d47858ec522a9298d2e8ab1ea8c459dd4cc8ae7c58"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250204/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d6a867baef632fb33e8c8c50d48f15d06eb975d565229576ce70e8e6f425d4c4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250204/TensorFlowLiteCMetal.xcframework.zip", checksum: "13fd0ea612c66838f47c7fc8e60390b4a1689fe20bb99453c6208848451090e9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
