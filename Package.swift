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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250604/TensorFlowLiteC.xcframework.zip", checksum: "f6edd9cffe122cd65e97a98c77c502c5c5895deb5c5bee87100077f0a5f0ef85"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250604/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7c055bf674f9cf98f2813cd4fe68ceabab4a3eca6f96472554a40fd045eba09c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250604/TensorFlowLiteCMetal.xcframework.zip", checksum: "51ff4affe7a51cf50513c415627188e380d1d6c7451231682428d90697b14d09"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
