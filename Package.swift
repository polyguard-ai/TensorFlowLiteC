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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240928/TensorFlowLiteC.xcframework.zip", checksum: "d4d9c4397313d21e071c87149a68fa4d45bf9ec8f423b015c61ff08c97556f74"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240928/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7c0a57db61cca7af82bf4b63f643de889d4aaa6b5a733b30a4b5dca5d2f11836"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240928/TensorFlowLiteCMetal.xcframework.zip", checksum: "d080457b5ce704bf006d5b759fb5163c5947d3dc3dd977eedb5f138da8e753b5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
