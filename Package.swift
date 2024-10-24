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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241023/TensorFlowLiteC.xcframework.zip", checksum: "4ea5a584a89a87ae9d303518039165db595e3e36a345612135f2a6e3ada7e738"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241023/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b4a8dfb1c96cf35e68b19996db1e80f70fdf9ffebf3b2d0f2f711a2c58cbf9a9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241023/TensorFlowLiteCMetal.xcframework.zip", checksum: "591ed7657d3130ca0e25d9b4e9c5733eced655f14e53d173f5ae52276a2c6d3d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
