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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241013/TensorFlowLiteC.xcframework.zip", checksum: "efa67fbeded93eca89dc64aa4f507c69b225950de5a2ff0fa30bd913368eba1b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241013/TensorFlowLiteCCoreML.xcframework.zip", checksum: "951b40d0cf3326701eeef3f4ec866b066d5f16b1dff740f01fa07387d2377a80"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241013/TensorFlowLiteCMetal.xcframework.zip", checksum: "567d627546eb5d22a27e9e96dbb26470217074f11d826bbb1c53022cd2ba6e5c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
