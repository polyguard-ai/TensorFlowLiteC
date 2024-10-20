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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241019/TensorFlowLiteC.xcframework.zip", checksum: "ffb8d5f735449d2b5cb1dce97305d8229b7d53853d75d8724b70f8c198a5a232"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241019/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7f9fc428383238ee1376dfb6b14455c939ab95e39f08dc33fd4215ea08fc21de"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241019/TensorFlowLiteCMetal.xcframework.zip", checksum: "cbf43009dfd0a32b8d689eaee0a356bf8c170a714cb015f444471efbd7f35fa8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
