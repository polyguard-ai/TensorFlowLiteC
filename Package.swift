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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241025/TensorFlowLiteC.xcframework.zip", checksum: "609863bae1d97dd4cdce9c8b4328af52e7c05b6c46723a57a25a84343b1efae6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241025/TensorFlowLiteCCoreML.xcframework.zip", checksum: "40f20c34b79c89ad22cb06591da6799d1718556458d92f718560a4fb40f4c23e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241025/TensorFlowLiteCMetal.xcframework.zip", checksum: "401acd64081be6845596507b2626fb889a55e9bc54671dc1acc66c1d7d72fd5c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
