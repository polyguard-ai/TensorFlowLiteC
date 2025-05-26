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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250525/TensorFlowLiteC.xcframework.zip", checksum: "bfa25edfd9ee7fa4463e8e1114a1175fd5c356783362502945db14654c8586b3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250525/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fa3004e9039ca644175d7f0597ac10de435ccbc872232735073035d2a50516c4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250525/TensorFlowLiteCMetal.xcframework.zip", checksum: "ed096b4ea3d0569ad33bbec0c21f51dfee2462dd9085641c5c38022aa91cb222"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
