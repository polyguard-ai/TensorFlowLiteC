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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250218/TensorFlowLiteC.xcframework.zip", checksum: "bd899da14071e56a39970e61d7fd9bf66de6802aa01565335733e66a320d92b4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c28037b9a705f2b2425e90e1bd9a49118286a9f94aa9deb4e46504bef4e7dda2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250218/TensorFlowLiteCMetal.xcframework.zip", checksum: "95d26f1aaa62202663bf0a89effcef9cd47427fd15513f450a033c58a2b7d9b4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
