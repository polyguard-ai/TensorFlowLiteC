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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250416/TensorFlowLiteC.xcframework.zip", checksum: "54628f9cc760b8c75d7447d8b00d40958bb435306172f3f4902301b309252847"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250416/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d6ff1808de30c4c636f632a25e18048b2f9a6f1cffe4c4c7ffc0e4a6c68b1974"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250416/TensorFlowLiteCMetal.xcframework.zip", checksum: "53c9e506a3204cf04452b19417bc3e4b740708bf2ece9056a97935c4df9ede83"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
