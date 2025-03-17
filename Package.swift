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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250316/TensorFlowLiteC.xcframework.zip", checksum: "2a6c7f5bcfefcca0fadb1f16f1c59ebbbf0fb60e39f0f84448f3b8fb80e96dfa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250316/TensorFlowLiteCCoreML.xcframework.zip", checksum: "90ad5b6b786c3dc4c7c5a7407d0f8749eeeeb35cafd6de18b6a7fb2c238d45cd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250316/TensorFlowLiteCMetal.xcframework.zip", checksum: "e8c804b66a85be5e620155b276d2f0133d506f21875bea7c2270b83d308b744a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
