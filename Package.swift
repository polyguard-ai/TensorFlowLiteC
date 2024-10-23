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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241022/TensorFlowLiteC.xcframework.zip", checksum: "d946d34cb8167fe1865d23946cb43ab2cd3d087bfb11d8da4d50b298bca5c12c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241022/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c4da215f2e56646aaecd1bb23099218b86cae81993daf0497620d3565cd1850f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241022/TensorFlowLiteCMetal.xcframework.zip", checksum: "791eb19b56f6a50697d3f1fc90c76ed6be340ca081d7d7d8c773b45cc9ef5b62"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
