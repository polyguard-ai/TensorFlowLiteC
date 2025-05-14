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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250513/TensorFlowLiteC.xcframework.zip", checksum: "0a7f702c31b0a6ffcf242399daa5c1a8869041c221aa9ceca9a8024e070491ee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250513/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ddee47c5ebe1f96ba718dcfc76e1e75256171497310a2de74806090086507ee8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250513/TensorFlowLiteCMetal.xcframework.zip", checksum: "4595e2c8be9da501fccedf5246e3f373f2408af3c17b8e1f965af47c7bf8e5e7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
