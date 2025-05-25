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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250524/TensorFlowLiteC.xcframework.zip", checksum: "c6b5b2224f5d3abf4049f5c38c48737a2ce80c31d5b689847e67ba742ab2ffe3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250524/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f4e539631f8f32d4672db1edbac40f2c0b8e788feec5353e0952225f87b5907c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250524/TensorFlowLiteCMetal.xcframework.zip", checksum: "21528f00b434fb65008a1a2d310588f815ec57c0a9f7bf23e1ad320c2ace2a5e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
