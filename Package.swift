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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241116/TensorFlowLiteC.xcframework.zip", checksum: "2612c2137aa370a15bbd0f8aa1740fd1b34771d38570ae451ce2a02ffddb388c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "20407e327e5876f7b4f0edf1b135cf4464dc167a14adab9c15bc3191c3c17688"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241116/TensorFlowLiteCMetal.xcframework.zip", checksum: "8f2e693473a012881b72d5b519a01919f40fd80c15ee5536014b4329994a58e3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
