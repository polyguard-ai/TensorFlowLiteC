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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250326/TensorFlowLiteC.xcframework.zip", checksum: "d11724c5546e05a0b63c28f2856ca331186aaca22b15360f9375bc7fa98b3465"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250326/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cc314d3cc216de6f33aab364e59a355a281f367b1fb9456400bc4a25f3b8ef79"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250326/TensorFlowLiteCMetal.xcframework.zip", checksum: "e25dd73dfbbfd1494e5ad45967cf87b3d98aae38ab1cec22b1acd535a087b9e9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
