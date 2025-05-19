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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250518/TensorFlowLiteC.xcframework.zip", checksum: "8737860c5809e220b87dea0c91363b4148d3e06b18bd3c60a1ada61e61c9da65"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250518/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4922530f319a5681d1b0601f2fbe4c7d5ab4f93bd0fa15fc45c7ecfc378ddeeb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250518/TensorFlowLiteCMetal.xcframework.zip", checksum: "4384ccce563eda2736f33ce3242ab28f7ca437666c875783afff11b3015d176c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
