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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250503/TensorFlowLiteC.xcframework.zip", checksum: "c7375d065e11e89d30d34b691cad38c0a25ef0df98fb232c34066ebe0ec90b44"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250503/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0730e224f1b82dfccfb9172042f470af358e45126994f2907733b443e2b1c294"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250503/TensorFlowLiteCMetal.xcframework.zip", checksum: "d173b67e2ee00ab41290d24d33f54034ad311fc09afe45e533dc8d9ce3be1d12"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
