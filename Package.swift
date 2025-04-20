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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250419/TensorFlowLiteC.xcframework.zip", checksum: "8ffca147d913f1fbc6f65e8861cd7d2eb7b7b7fbbb7efc959e64b45f740f629e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250419/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c35f5295da446a03914e2c9d2f3f7574bb98e9058e69944113f6295f184b4f07"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250419/TensorFlowLiteCMetal.xcframework.zip", checksum: "aee89efbf7db918a73406f4d52feb1b7cfd95f0a3488e48ec59c9eb42d8d8e67"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
