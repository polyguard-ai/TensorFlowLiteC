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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250120/TensorFlowLiteC.xcframework.zip", checksum: "f05ad4f2383afe0c7732ad05f3ba4bfc6c91c594e200c66563d432ef0fb96c58"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250120/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cc23c148090a51da1f21e425552604adfb22d6ae66f0b1ae78e7a68f881dd03c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250120/TensorFlowLiteCMetal.xcframework.zip", checksum: "adb19f8c5ae151efa70b129ff591d35fd3b295877cd2f0b806fff31f9ace4b38"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
