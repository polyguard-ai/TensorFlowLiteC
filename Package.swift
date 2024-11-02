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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241101/TensorFlowLiteC.xcframework.zip", checksum: "4d5d732cadf9a470afc4d368cc103b58d8cd83711a4e48b3788e17b41c0f7693"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "28b430fa2be9f412b704d466833c5887ee50afe7537ad2723f8a36fb864106e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241101/TensorFlowLiteCMetal.xcframework.zip", checksum: "b4a28388c6454effa77445eb81ca8d543d9039cbe54710f1a3aba4b26accec8a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
