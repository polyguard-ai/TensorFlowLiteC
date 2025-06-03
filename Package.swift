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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250602/TensorFlowLiteC.xcframework.zip", checksum: "511255eb87a1b3ee618ef11de31d0be5530dd22fb341bd8149fc116de1396463"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250602/TensorFlowLiteCCoreML.xcframework.zip", checksum: "795a590c7be1940a0e0a7c0eac9b751dd490d5211c6e48a709f7d41547f058e4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250602/TensorFlowLiteCMetal.xcframework.zip", checksum: "da48d4b1e9c6e9da3fe7ffe5ba952e3015cfcb5cd14c7096bb63856b6e250546"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
