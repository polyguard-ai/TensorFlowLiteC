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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250226/TensorFlowLiteC.xcframework.zip", checksum: "b5861e9ba4737b73d496dc60b0f50f26ef3b87ee15e425cea1bdd8006e43c242"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "61a73da69a8c6b030972288414d54de5e7775ae7e9266dabaad817c7633853c0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250226/TensorFlowLiteCMetal.xcframework.zip", checksum: "dbe1010906349d7bbe1dd4c6330f7d8d70f8060db6735284f2e2232f35dc0211"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
