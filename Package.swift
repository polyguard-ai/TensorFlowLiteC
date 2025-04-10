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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250409/TensorFlowLiteC.xcframework.zip", checksum: "93d3d8c7c8ed9331b225d131a55e3e4ae7ad31392c34d6c8303c7783c5605565"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250409/TensorFlowLiteCCoreML.xcframework.zip", checksum: "60c8af8b1d27c3ad1570d889c9bf601394b64d018c08d5fb2c75ac217718f153"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250409/TensorFlowLiteCMetal.xcframework.zip", checksum: "5514488f8d5acfda203d904fa2ffc117a6ffbb092d4590c8e8cdcec0a4373774"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
