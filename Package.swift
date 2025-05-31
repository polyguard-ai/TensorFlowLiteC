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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250530/TensorFlowLiteC.xcframework.zip", checksum: "a7338e0fa860bb2d319c984899571078ce23859aa763da61b634afce3ccd7207"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250530/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5f9d6facc7bf765a78d315803048fcdc1ed72879c4dc31f180c2c5ff5821aefe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250530/TensorFlowLiteCMetal.xcframework.zip", checksum: "d37ed098749cfedea27b49af1ecf6d6acb407f0e7ecbd5a2f05c0718e4d5462b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
