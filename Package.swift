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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241123/TensorFlowLiteC.xcframework.zip", checksum: "49bcdc691f0371b284b8307588b258240a3e8b23d465523a3719bccdba8a5abe"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aa190c3d595111c9605487b4966195e684e608bd0312ed216ac334c61d251f5c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241123/TensorFlowLiteCMetal.xcframework.zip", checksum: "eef2fb80cf1c22c91d663fa9a0ae0137520d7aac2e0131c4dd77da30276791eb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
