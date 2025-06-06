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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250605/TensorFlowLiteC.xcframework.zip", checksum: "dbcfcc554ddd583298fb9a869a38d6b3a9b559609eccb36ef41f6688b385f8c3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250605/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5d287acaebaf72ba48f043370c020d26bee6a2780f461cf172d5d7dcc6fc14e3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250605/TensorFlowLiteCMetal.xcframework.zip", checksum: "a2e85dcd8e400b6dbd98e1f4086d985271f6e6afb7795abd02f9f9631d8f72b0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
