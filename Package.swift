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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250501/TensorFlowLiteC.xcframework.zip", checksum: "7c33d675b61493d0b44ad97d4bbeb092f9370845524d54d192d381ba32733ccb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250501/TensorFlowLiteCCoreML.xcframework.zip", checksum: "68e0c6f726ace36826458d49a80ed238b65a18874888775f4eda2139d8761719"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250501/TensorFlowLiteCMetal.xcframework.zip", checksum: "1ec069d52833f2db376a68e783ec8c0264ed007d3b9b2a2bf780da6200f22ed5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
