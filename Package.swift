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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241015/TensorFlowLiteC.xcframework.zip", checksum: "31c50f81b6a797ea7cbfac387ff668b7382c81b0a1f75e11ef5e02c5eb75e7bf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241015/TensorFlowLiteCCoreML.xcframework.zip", checksum: "066defa8519bbf47e37ef2e2d5ec68a59b1711b830ee9f8b6690fcb0d76c6180"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241015/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f7767c08324cd82e0039748d791f29aff8108f8ed1bcfb3c761cfdde0329c4a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
