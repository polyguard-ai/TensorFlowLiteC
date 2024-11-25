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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241124/TensorFlowLiteC.xcframework.zip", checksum: "3aec70e559d388a022e4222094458b3b278324ed7826e3a8af7e97c888decc7d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3bec10112f7c101756b37ea04c38938282565e5cf5e41c4dc7feb497205ac330"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241124/TensorFlowLiteCMetal.xcframework.zip", checksum: "27a61633edbd53a7c7e77a63f3822d52600e7a17a8d04f37376b9483ac7d8d91"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
