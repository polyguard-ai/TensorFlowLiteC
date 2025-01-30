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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250129/TensorFlowLiteC.xcframework.zip", checksum: "90fdee6db72f77118f36d4dac84a6383b72d01d0ec29bc5b04f8f13a0c4df24a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "84960fdb192af90bc66868201237a88de1223f75871fa06cbf8ab6b98b3887bc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250129/TensorFlowLiteCMetal.xcframework.zip", checksum: "7855082cf6af113e6e69475cfd5b74d7cc2b10d3680d406e0a2d8598b17d4db5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
