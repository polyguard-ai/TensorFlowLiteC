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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241223/TensorFlowLiteC.xcframework.zip", checksum: "0082011058be0b2f3a0ae9624292af7ccb72c9e0bc358b3946400a2ed4fd6707"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f27ad180a582f20896f019e075819d6937bd6f29ffa599d3a187a5a443c06a2d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241223/TensorFlowLiteCMetal.xcframework.zip", checksum: "b51499162472bea09cf43ae26467fdb9c933fea9c80003716a4d789435487bd8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
