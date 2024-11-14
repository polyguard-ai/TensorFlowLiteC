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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241113/TensorFlowLiteC.xcframework.zip", checksum: "3f66dd5763b5bf2c8fe0df2e351f05b50784c54f7bd4a324092baae953f5be70"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9986cb45fdbe45e7d33a68962abdcecf6d155c8022bd4d7525fce4363fe19997"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241113/TensorFlowLiteCMetal.xcframework.zip", checksum: "4063921d23eb9ac9e00c9a74cb176932f19cac828b525a293473a0a468c18a7c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
