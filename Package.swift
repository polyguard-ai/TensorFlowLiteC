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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241016/TensorFlowLiteC.xcframework.zip", checksum: "88de2d35c3c6cd6d97a692451487d4a8a2d8a41198965e70c701dd46c42cc0eb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241016/TensorFlowLiteCCoreML.xcframework.zip", checksum: "62006573e137544a52c48607a3eb2abf57a22340ea87493f0caed3b5ade3405f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241016/TensorFlowLiteCMetal.xcframework.zip", checksum: "fd64c0e5aa7e51167ad298b167223429d472e3b50f8d29ed27dff9d6f64744d4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
