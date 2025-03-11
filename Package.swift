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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250310/TensorFlowLiteC.xcframework.zip", checksum: "cc76fdf752bc5dc76b0b4267089d7806e1fb4404a1577b4768f0640aeb54d23c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250310/TensorFlowLiteCCoreML.xcframework.zip", checksum: "59c5f30471b0b7849da3707dfdfd4b098ab32239b79238846985a59836cccd67"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250310/TensorFlowLiteCMetal.xcframework.zip", checksum: "7c333f8ec757d6e4769d17c26dff2f9cbb789a438abb66a6a1a793e1a2b6fc49"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
