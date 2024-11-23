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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241122/TensorFlowLiteC.xcframework.zip", checksum: "67a3a449bd5e8fd2b54fe3d2cab3d6926ea924be9a6f47f8e00f06b412e61acc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "348fcfe413ee8e8da00e45271a5144b4429d7053c353ebf075be5626b116886d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241122/TensorFlowLiteCMetal.xcframework.zip", checksum: "ade53fa487d83e3568a93170baa130122cfb133787cffdcb9ad237938eb80596"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
