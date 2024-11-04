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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241103/TensorFlowLiteC.xcframework.zip", checksum: "7c696ca61b37b596f6c710194e139798eb66b19fcc6223012aa8bcbb88f346f4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241103/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b13fa4010629df9e6139c37bb793bde803f1e0e7fe0796c3ea415a35a3bcd1cf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241103/TensorFlowLiteCMetal.xcframework.zip", checksum: "0ef60fe195e5315836e0baa200ea34231efec9f5f6beeb3462598e5d80063a22"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
