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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250425/TensorFlowLiteC.xcframework.zip", checksum: "f61ba6704057dfb817aff5d050d94f198b7d5abcff43fb733a6f82424f22e013"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250425/TensorFlowLiteCCoreML.xcframework.zip", checksum: "49c331c5c416597aecf8e964a779b5384903d2b63c53cfc3bb5b38c4d3bb9b6b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250425/TensorFlowLiteCMetal.xcframework.zip", checksum: "ecd7fe86d304c947caf6bd5c9c45fb040d38af482943660bbb008126e0270232"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
