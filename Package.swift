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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250615/TensorFlowLiteC.xcframework.zip", checksum: "4ff9b8200b01291c6236137cd140ce96d39cce3d348842e9688748e5371c5d24"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250615/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bcb0e52a503858d17bc3551d8a988f73f4a2911998b6f08e82fc3a4905d2ace6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250615/TensorFlowLiteCMetal.xcframework.zip", checksum: "e5e8d82d8066072a4e2d1e4a4d25b68c494bb361c57da5fcf319a00a3778fa9a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
