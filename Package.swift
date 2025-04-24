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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250423/TensorFlowLiteC.xcframework.zip", checksum: "1bbcb6a815a0c478c82a769c579762678c4be379bc970a284f5ff4a71d377445"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250423/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f77539f71d6549d675f953d6e97528118b265a51eb4e5415bf909d47db6696cc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250423/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b540d58c4ae0e8465eab3d4453ed8bfc4680c8566ef68f9d4eb71f1fbc889b7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
