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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250117/TensorFlowLiteC.xcframework.zip", checksum: "1db246f40f10961e63b3fcc306ba641c0b5322ed3390c8da71b4a77c0a992fc5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "15d97f4333d29126c9587e53fbefe0a49e30d1942c9ff66a980ff25b2c517727"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250117/TensorFlowLiteCMetal.xcframework.zip", checksum: "414a77755d90c131ef9a3122441485b6097b49197546db45d8a4852be8b53a8f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
