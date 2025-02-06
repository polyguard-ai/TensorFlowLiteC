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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250205/TensorFlowLiteC.xcframework.zip", checksum: "e602f8745d9608f71b73000b1f34081cbd87042f224dcd94a1b0ae162e16c577"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0571db12ce765d56dd2462587f107df4668580d771282d9d0a3800d0624b6f9e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250205/TensorFlowLiteCMetal.xcframework.zip", checksum: "2bb5768ddcd53ce1d5e8b09b48e9c38b232eab1e11ac4beb58956f0930678b13"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
