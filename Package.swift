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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250101/TensorFlowLiteC.xcframework.zip", checksum: "7d71bac6bb02df32b84c138a22fbd5b1302b3bd7ab4b77268d6c21d70a253f64"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "31e90dd3e82ceccd9a1bc831e98d7f44ba02eec522f84b974229789047b733b2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250101/TensorFlowLiteCMetal.xcframework.zip", checksum: "a2678bde67a73e8f49b51ad0998dc1b4b96213af1a332cb61410778cdcf23f1f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
