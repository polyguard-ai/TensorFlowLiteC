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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250221/TensorFlowLiteC.xcframework.zip", checksum: "4aecb26a8f6f406be5aa7060bcf9264506ef79787fa761b88fb7d8fa83bb2c56"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0ea72dccdf9447f87e4926abe45eb174760fb3505f9b6c5b486a8a071d5eb3d8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250221/TensorFlowLiteCMetal.xcframework.zip", checksum: "b3ddfa4b944338faa62c0e5cb4c7b1e1a445334020827cfe72f00f9fe89630e4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
