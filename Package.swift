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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241008/TensorFlowLiteC.xcframework.zip", checksum: "3fc1ce0753bf29bb3123e6ca7ab7cc1880b81c557e70463412fedbc777d1543f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241008/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6695485a195b2346ed2dd9c6985165b2bb33175f97694297d40e478af38d5575"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241008/TensorFlowLiteCMetal.xcframework.zip", checksum: "d393f5f659f729dfde2e32f9fdae8076bd9b1db985a0be88c1b7f605e0acf773"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
