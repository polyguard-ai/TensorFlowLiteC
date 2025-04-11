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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250410/TensorFlowLiteC.xcframework.zip", checksum: "c918f251c19626d229e5ac4053bef9082dd9840959f29ed91b95c33c78c4f441"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250410/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1ea4cc17c5a3dca1c3a8e48ccea22b07d1166408d1c762edfdec309ff946a0dd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250410/TensorFlowLiteCMetal.xcframework.zip", checksum: "7b24b970f283653a66b7c0ef392261fd684a0aeeb950fb8e0e1adfb7893c223c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
