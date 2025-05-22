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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250521/TensorFlowLiteC.xcframework.zip", checksum: "142cae4173acc285c3dd083ef36d54aa8a206b1c958c3b8c1b5889483f78f059"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250521/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a46b615c0a3ae649433373acafee9743eaf48fee2d9463511ba436dd9e15605d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250521/TensorFlowLiteCMetal.xcframework.zip", checksum: "b43a830f9148eb2ed8e858ab91e4964ac992862a639a00cc8cf359038ec3d0ee"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
