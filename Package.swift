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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250315/TensorFlowLiteC.xcframework.zip", checksum: "ddbdb05b0378f610bc9dd16eb95a2982def9366bc0c665c830eac631ae2b34c6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250315/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4cc463ec19f22b6bf6c5532c08851fe681d1f668b8e8789fb5dcce5ab0812664"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250315/TensorFlowLiteCMetal.xcframework.zip", checksum: "117d8c643ef5a2cafee5be5a9fdb7cbbf3b15b894bcdcfd81bf490983be43db7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
