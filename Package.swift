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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241130/TensorFlowLiteC.xcframework.zip", checksum: "5e1a6b51573d71dc8ac167f58abd511402037bb5c008ab7027f7d3674a7c11a6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241130/TensorFlowLiteCCoreML.xcframework.zip", checksum: "883f8e97d8f1ec556ff3a40dab29556128f4a2160ded9443cdcb7ffb17ba2905"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241130/TensorFlowLiteCMetal.xcframework.zip", checksum: "89b022cd4cdb017b0a4b297386e62d1e5e64f13870883b044c882e2e8d9aa46a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
