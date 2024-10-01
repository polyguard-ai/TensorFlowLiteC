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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240930/TensorFlowLiteC.xcframework.zip", checksum: "e7bad99fa5b188c11c762f55fbab0d201dea99f5cb7979c62f38678e36b7567e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240930/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4c3a3414e3c576caf8a2c1e3d64e7b0d65ce749e69671ffcdb0aa9a9df45a6be"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240930/TensorFlowLiteCMetal.xcframework.zip", checksum: "0bc8fe5bcc15c703ef015675a544ab6de227a4c5acca83ad7e86a408d841de86"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
