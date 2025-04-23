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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250422/TensorFlowLiteC.xcframework.zip", checksum: "2fd91b4e4e574d273e21110c45ae4716c2ba83b21f509b49d8c08e6d462c6199"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250422/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7100e546ed5ecc0aa46d9c6ee58fdf0599d0bdd7d852e6fb43a3672dfdfb1eef"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250422/TensorFlowLiteCMetal.xcframework.zip", checksum: "5489c0e0ee8f9b266218d8ae9c004d470d151f4f536401ad8a8a80a00a84242d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
