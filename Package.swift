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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250113/TensorFlowLiteC.xcframework.zip", checksum: "994479b2c9e2a21c53e9419dc51711ec2b821ba3f4d71265cf055a80f8d936d5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "21f471373c654f225cfe4d3f95a0c2c2aa527e33c53c4fdcb221f810d0b384a4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250113/TensorFlowLiteCMetal.xcframework.zip", checksum: "dd624dde2d1e798efc773c6ff592516ccd4cea4ec1f5a495d8142b589f3a51e5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
