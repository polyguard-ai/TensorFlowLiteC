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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250324/TensorFlowLiteC.xcframework.zip", checksum: "5ef562de09506dbe10126d871cd0696c99f7de02951e246caa4ce4491392d76f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250324/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e264ae2e294c8fe1f3314d31dd9555838853bf446163088fef38b4bac51f4490"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250324/TensorFlowLiteCMetal.xcframework.zip", checksum: "21a5e5534613b3184dfad698d281211e7a487c06e857f1eb068340f6b5cabdf9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
