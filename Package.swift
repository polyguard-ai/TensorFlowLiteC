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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250505/TensorFlowLiteC.xcframework.zip", checksum: "b0af8fe898d388db0f05178bf87f4676aa9e33e83851d2385d7485f24544f6e0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250505/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ec09fcf8e52e453c6e13752fd36f47ffb7c252317af3231eaf3f04549accd3d5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250505/TensorFlowLiteCMetal.xcframework.zip", checksum: "a870772bd4e2fa2ffa7b3382cfb75ecd334506b3da739e237bc41e3ae4ee6386"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
