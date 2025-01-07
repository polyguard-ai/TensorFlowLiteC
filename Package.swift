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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250106/TensorFlowLiteC.xcframework.zip", checksum: "a8f2054efbcef2f4c7dc02bf383f677e56c213db1b4c3984fc2f07a3e41ebb5e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250106/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5fe8aaedf4cda57e571a4ee3ed5e52742aeda0d34c2303435eee9cbef665bdaa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250106/TensorFlowLiteCMetal.xcframework.zip", checksum: "556121049a17bfbb7ad65ec3ae0ec036068a603b1ea66adad3155c0a7c9731cb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
