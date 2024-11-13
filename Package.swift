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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241112/TensorFlowLiteC.xcframework.zip", checksum: "56c2652227287d4e3f88e61ae449422254772bdeedf146e676a24e6acbc34bcd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8692fa8226f0698788319f341536d67666c0dd523fb978fd1a5fd8bcbf91e30d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241112/TensorFlowLiteCMetal.xcframework.zip", checksum: "2a0f36b0b75c5c2b48371dfe32442a35319f91c5ff5bb86668052abdf6af0d26"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
