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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250527/TensorFlowLiteC.xcframework.zip", checksum: "1d217c718749fcd37459eece6cc6d02ab5546950a9c860b02c0047819e048fd4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250527/TensorFlowLiteCCoreML.xcframework.zip", checksum: "59f60c89e30a05cb5aea5d5bf55e69fe5f89cbae4d31c1b82880c597287478c3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250527/TensorFlowLiteCMetal.xcframework.zip", checksum: "92c26f891d0f6a43e74defa3386569267ad2b8d5b12303f9c92bbff0610ba37d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
