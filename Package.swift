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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250508/TensorFlowLiteC.xcframework.zip", checksum: "c86a31e55912f709dd5a97cd671ed01cc67fa4125a98609814eaa2e1a63acc29"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250508/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a73adfc4bd42f94e015d674f25ae3dd5363321d0435e7d670dd2dd6c6c737065"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250508/TensorFlowLiteCMetal.xcframework.zip", checksum: "d963209d81a40cc204d18c840036a1ba4bc03e0627b0da3bf21ef3feffa8e97e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
