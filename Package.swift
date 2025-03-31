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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250330/TensorFlowLiteC.xcframework.zip", checksum: "4c17a8cd46fcadcce03435fbb64dd3d6b0f50120cd0ef6afa660f536f93a8eb0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250330/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d8f5e2bc5b198422e59ea2b21d40feacdcb06be21d97d8641b8e1c3ea5cb656d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250330/TensorFlowLiteCMetal.xcframework.zip", checksum: "d1ab15f4e04311cb75b107cfc314c717e5617b7154aefd2320f8f4af13100672"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
