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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241205/TensorFlowLiteC.xcframework.zip", checksum: "f0f7fbf539d05a98aeafb29b8f5d5664daf95851d881ced73df1e520e11aeb14"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b0bcd6b3f117efa350d095e6c0523a40266ee9d499bdb3959e31c21e2ae9f1e5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241205/TensorFlowLiteCMetal.xcframework.zip", checksum: "cdb25d0aee1f8ffc22686f5b6d6c1a4bebf6fefa9f2b5840eb627413f127d87b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
