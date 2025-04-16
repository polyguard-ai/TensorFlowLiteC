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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250415/TensorFlowLiteC.xcframework.zip", checksum: "cec3a2309f76fad2186116fa7dbedf5698809c0797c1f2aac64f66ccbccecbf8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250415/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c4a841efc3ea3e3e2aaa54a0d7b428ea760ee093b6440d42095edc88984b38dd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250415/TensorFlowLiteCMetal.xcframework.zip", checksum: "993368bb45b56d684de6d9683067694d2a21b2d94214d5e919895a37edd83ed2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
