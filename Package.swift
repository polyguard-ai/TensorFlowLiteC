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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241203/TensorFlowLiteC.xcframework.zip", checksum: "240ad9786591fb5140a6be5e44bc0a9b60b9c54852b169640e314bf8ddce592c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e50169a05b5d62c98e0e66a1afa58b21f109bcfc606959da4c00f45aa72778f8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241203/TensorFlowLiteCMetal.xcframework.zip", checksum: "9f75abed29e4e33897d6355bcd1d4d1bd0b342a428744533ba15a5ea2d13065a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
