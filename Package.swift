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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241006/TensorFlowLiteC.xcframework.zip", checksum: "796ce8890c5a5386fd25e3e5df9f9513943e214807ef726d7f6345976ad00937"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241006/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fe7be741ba1352385bd2c7055d4fdef24f1fddbd249d25d5cc1483057407fb2f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241006/TensorFlowLiteCMetal.xcframework.zip", checksum: "62af662dee507e0f83c499437413882bc5c467cf9c6d42e0c7ad6ae842c8213d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
