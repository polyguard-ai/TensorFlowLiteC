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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241227/TensorFlowLiteC.xcframework.zip", checksum: "d2eb16138314ef9bdc45e29cb16f6e698e7073ddf0580c0207db90a868ecb479"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241227/TensorFlowLiteCCoreML.xcframework.zip", checksum: "33b2e4c8ffb45570456191bb0e36851affcf53ba21c0ca230113e8e39cde5bb1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241227/TensorFlowLiteCMetal.xcframework.zip", checksum: "efb128000a936effc89459bebab3200b4d60303961e49d4c35c52466d00a4044"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
