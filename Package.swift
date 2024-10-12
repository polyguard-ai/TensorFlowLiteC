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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241011/TensorFlowLiteC.xcframework.zip", checksum: "82c59e504bfa4e8a2ea73d8eeee9017ea1d0ca3fafd68d7c1fbe4b9a8f502360"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241011/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8d2cf181f418d0357d5295d6aca9d5fa27c4978426f4818f34ec562b0b9369e9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241011/TensorFlowLiteCMetal.xcframework.zip", checksum: "e73097dcea45f58bae874ed56c1e625092ef0063a4449e4f996b4bb5aef26974"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
