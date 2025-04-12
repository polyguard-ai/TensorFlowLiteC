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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250411/TensorFlowLiteC.xcframework.zip", checksum: "9038acb6612812b13cf0259df081046b19ca156f1206a56b2b3fd30504dc1af9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250411/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1cdb0c3cbe10509f7dc6b48fa7cd2c9353f8d673c5d61a06b5a97d5254ab01e6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250411/TensorFlowLiteCMetal.xcframework.zip", checksum: "ea10910eb98920853bf136140753a18a2f7a8991c5674ab172851439acedd1cf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
