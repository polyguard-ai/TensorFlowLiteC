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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250103/TensorFlowLiteC.xcframework.zip", checksum: "be2e4d6749d0e2885e282ee47cdb8121614154857ff9c8b5e87a48388771d942"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250103/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a6d1b14b0b92e57eea36f7d75e00aea4afc31d46e931159f2649b8a6b484b137"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250103/TensorFlowLiteCMetal.xcframework.zip", checksum: "941555e0ffe1d0dda03afabe1c0dd6b85f5f2bac1b687e24f0bba2ffb50edbeb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
