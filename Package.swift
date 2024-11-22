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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241121/TensorFlowLiteC.xcframework.zip", checksum: "4e062cc6e3f9f5d884b19a3afe1feec5df42d82fceed7735cb1e278cd3a6b3fc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cf7d5d3173c9813817a2effbca2da08448a47661829c617b112b6622e74ba2d7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241121/TensorFlowLiteCMetal.xcframework.zip", checksum: "9b527f256384a5bb92af91840eae324efe64e95c06f12d1cca89f7100ea572c9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
