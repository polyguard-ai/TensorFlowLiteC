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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241115/TensorFlowLiteC.xcframework.zip", checksum: "cfbdf06b31d3e01513109a1b74625c76f0c85f8b11f088fa0a8595c400c8e036"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6d894c0ff1256a0d56edbed332f11e9ba50bf198ab7fdda8707cbaeb402f8ec8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241115/TensorFlowLiteCMetal.xcframework.zip", checksum: "19d297c880ce7c8fcf1aa9a3107c621fa56898004a28edb3be0096799a63c2d9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
