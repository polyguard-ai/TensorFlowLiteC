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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250519/TensorFlowLiteC.xcframework.zip", checksum: "e2132b57b53ed9fa7d7c656ea708acf8f22fdc3b74dce0fc26ef619a8ee63a96"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250519/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ef6ef64b198972a4088bcb3a14ae2ce7277a036b1ed393dc1bed7a5081384966"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250519/TensorFlowLiteCMetal.xcframework.zip", checksum: "bcc231642dcfb1a0c19e3aa77fa6e486bd6bad0de95f599ac12a6e0039f22bdc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
