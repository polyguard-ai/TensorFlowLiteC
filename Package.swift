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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250616/TensorFlowLiteC.xcframework.zip", checksum: "45add19f0a862fa0a2891512cb90757fd31094bb5c22accd838aea312fa2545d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250616/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3f6d5d467c82824ec26c8d439f9d10e90020edca37c021a4bd9849fa8c3a0817"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250616/TensorFlowLiteCMetal.xcframework.zip", checksum: "4290717cb5b067aef91477c11e949980d4487f72c6fa3c67eb3e0ccab834c1b7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
