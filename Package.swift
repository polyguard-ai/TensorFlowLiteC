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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240923/TensorFlowLiteC.xcframework.zip", checksum: "553233a45bc3c227ee19b4cc86430d8a1772cf9a09c1cf0f81e4e12f529510c5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240923/TensorFlowLiteCCoreML.xcframework.zip", checksum: "18572141096d2cd1aef72ba9854455a38084268a350b4ea5c0866e67fee72324"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240923/TensorFlowLiteCMetal.xcframework.zip", checksum: "c0dca43a2619135610fa81cfdf9aadb42a1052c43e16fd62f9bd51c7ad2ab91e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
