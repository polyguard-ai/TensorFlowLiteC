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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241104/TensorFlowLiteC.xcframework.zip", checksum: "e76e704b63a08200c66ab127cc29ed5dad4d1c6c56cb6ce30cac74efd9e131fb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241104/TensorFlowLiteCCoreML.xcframework.zip", checksum: "18a5addb414e4b80c52ab9ba2130c79ace2b319097f4af549d3009d83bc7af44"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241104/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b5fd115f34ee7676be15abeb17181aa47b2ca50afadae997c5cc2ecf5906c56"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
