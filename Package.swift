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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250421/TensorFlowLiteC.xcframework.zip", checksum: "9fcfd3e97579dbd9ed222309440b938a5e911a15162a7853a68c6ad8a3c6fb25"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250421/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2b0fdb467c019e24b10af4f367b268c4c1fd5bb9ef883a6821c5367eec8af0f0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250421/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7496fbc9b908778db940961b558737af8cd25042d9a3976b61db5d34dd12f19"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
