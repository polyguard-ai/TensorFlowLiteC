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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250119/TensorFlowLiteC.xcframework.zip", checksum: "75c2da064b8eaf6d7fbbf1ec313ef4e3c90c34335c165a34fcce743d66f79274"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "68954a4c67939ea83ad4a77c01193be3fe28c51430c7b704259ac07c5157dbad"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250119/TensorFlowLiteCMetal.xcframework.zip", checksum: "f4f47f3cda1ed377f3a39d2b3bb42aea11e2d8f628f008af4ea1a67506572997"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
