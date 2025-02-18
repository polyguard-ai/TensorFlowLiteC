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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250217/TensorFlowLiteC.xcframework.zip", checksum: "f841fde42940a17163b8b10e876e1fc300009cbeb06c5a5820a566885aaf332d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7eaf4c748bca494700897a87bfa50a92632cd1a943afa4f61ac9f1f6f92667c9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250217/TensorFlowLiteCMetal.xcframework.zip", checksum: "e6e847348b5de6b1f47514c354362574bfd537c0f7704f1829327a4441132506"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
