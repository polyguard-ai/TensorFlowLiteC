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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250115/TensorFlowLiteC.xcframework.zip", checksum: "be48180e93dd5ff7ddab2fe4fe94500010ca90d2b211cabeac7edcdc3ecd4d78"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "520493e029b98eedda2bbc531a82c783801183077d93bc37f7e9e3abc5426b10"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250115/TensorFlowLiteCMetal.xcframework.zip", checksum: "5bf9fc6c5bb7f87efeca81e4ccc474f6f823753b13f17c6d5a59a6295068842f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
