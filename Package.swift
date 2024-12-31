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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241230/TensorFlowLiteC.xcframework.zip", checksum: "cb5371c20868a7f35fc889f619c79923c792834006fc3b1da41e0c40e33fc4da"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241230/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dd425d965cd29eae20446c8e9958e110015cc7c456d7518218f979fcd031bc84"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241230/TensorFlowLiteCMetal.xcframework.zip", checksum: "1678d8524817903ee225889a80beec2bdc76662d030ec42a34ddeedb60898682"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
