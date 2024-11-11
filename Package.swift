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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241110/TensorFlowLiteC.xcframework.zip", checksum: "d10a5f4dd01bb916c0126d8be0eaeaa50db64a0dd2de4373966030556a7977d8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8bb3aafe106e61c2962f796c48cdb97897bb775e71d93671569c93cc66461c3c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241110/TensorFlowLiteCMetal.xcframework.zip", checksum: "128133a3ca320ce4b05059e7c7cf6206633cff6a01e92594bb629d4b076a6fb6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
