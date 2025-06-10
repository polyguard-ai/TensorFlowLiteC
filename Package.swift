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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250609/TensorFlowLiteC.xcframework.zip", checksum: "9dbca43ec088bd8dca138560914313b964507be1da4811892308f70134eb10b1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250609/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d1ccf3165925ca81d142fddc90d1c45b57cf3a0a5e4edbadde5db5cd3c0ee846"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250609/TensorFlowLiteCMetal.xcframework.zip", checksum: "0202fd4b7702d905c07c791756e8fb040587b7f98b7c60a1965178771fb38bda"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
