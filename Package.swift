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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241226/TensorFlowLiteC.xcframework.zip", checksum: "aa93401514c159f7b42fdc15fb391671ebf607a43219eeecf3539d30ae11e7c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ca10d9f3be0bfed4be81e36b6a1cc8b7dd631bda03c80fc9e14a8bd16edda9b8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241226/TensorFlowLiteCMetal.xcframework.zip", checksum: "4cd2284e375b90ca892e8e95337d9b1ccf919195e51afea6a92da22bbb9e9a5a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
