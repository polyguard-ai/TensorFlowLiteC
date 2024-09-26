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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240925/TensorFlowLiteC.xcframework.zip", checksum: "61196fb827490fe13611697dbc72941dd8db25c775d40fe27acd554bcdf3242d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240925/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1b57b0f5828e639ad744eec26f5f1d3db711cba987fe8df594d278f95b671eb3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240925/TensorFlowLiteCMetal.xcframework.zip", checksum: "30d601ca5759d3e23d7f484ff8c4b128815301f6038cba214d0d6d6a47228065"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
