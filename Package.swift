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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250220/TensorFlowLiteC.xcframework.zip", checksum: "fb6fe575013e5c66bdb24b62c3a755d45b1ff8c6f07ec75c7d32395806d18135"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f57394646b0dd906d36d23f665d67764ca93c4fecdd868d1e56608a77fb25571"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250220/TensorFlowLiteCMetal.xcframework.zip", checksum: "74c5b29936eeb8352d0bdd41f34da8cf4f324d072c1db5e5c31b49c116720d2d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
