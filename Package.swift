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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250427/TensorFlowLiteC.xcframework.zip", checksum: "c7413a4b0230ce5a78c302aa1855910f616a081ee5198ead8131e12530a7e500"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250427/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8d60d265cbc56e6d5488acb1e07cbfcbbd51018f363c75f9f942e5c5733daba6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250427/TensorFlowLiteCMetal.xcframework.zip", checksum: "f788db4a2818bc29ba60eb62bde66dc5cfb1d8b95ea957f3b70e6430dc5b1265"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
