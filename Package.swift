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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250311/TensorFlowLiteC.xcframework.zip", checksum: "be5594ad476c35582c1813ccf1a932a60f6ca636a634a22f313ea50f3ef54177"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250311/TensorFlowLiteCCoreML.xcframework.zip", checksum: "34f91753bb4bece0c62cef1282bedefcb722479ec0c2534b1a8712b5dbe777a6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250311/TensorFlowLiteCMetal.xcframework.zip", checksum: "8505aae0cd9abf898a25e06ed0eddb94ed3bc6e66c38d4d7a0644e1637ef9cce"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
