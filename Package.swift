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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250116/TensorFlowLiteC.xcframework.zip", checksum: "1c77d8b9f66aab6fe22f04fca8ebee57ca8963328d48e4d6efeae1d1cecac4e3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "feef571b259f1f92cc42951470037d4898ee9378cba2e83bc608b65eb4563b84"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250116/TensorFlowLiteCMetal.xcframework.zip", checksum: "ccfed19f74a316eef6579b6366c8c8cf8e065d9a8774deaf7e7a1036615746d6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
