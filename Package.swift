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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241209/TensorFlowLiteC.xcframework.zip", checksum: "8b1178dc938820fd966cc7bff2a79c652ed7feff52f2cf395df9b1bd4989aa6c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "931834918fa5e3653c86fcc28d4db940deaf01fece05750beef857a721ef77c7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241209/TensorFlowLiteCMetal.xcframework.zip", checksum: "37260c45494076cbbfd91a5ed2ed362ee697e2b43296e24cba1a2c6659916156"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
