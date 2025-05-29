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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250528/TensorFlowLiteC.xcframework.zip", checksum: "fe965ce8a0bd9f4fc58d75531a531231697da40a8ff2160788b28833b664e5ab"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250528/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c205e17269658cf0702a4d2a21a78848f54e72abc2db7174c01ce21e96cf25b7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250528/TensorFlowLiteCMetal.xcframework.zip", checksum: "55326e25c4337282f1d24c90395da00f699d7dd37724aae423df75cc2a47ea70"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
