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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250611/TensorFlowLiteC.xcframework.zip", checksum: "295a51a0acac22b8bdc32ebca3bf8b485b38168491738f621a6f703f6906f0da"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250611/TensorFlowLiteCCoreML.xcframework.zip", checksum: "99e31ae4f56a849da5529af8ec168e109b216073da9e30fcb6ab1378a3e99356"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250611/TensorFlowLiteCMetal.xcframework.zip", checksum: "055cb5b3f08a539011cffaa4dd35aaa459de58ad21fd7868baa4b3256c7c9314"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
