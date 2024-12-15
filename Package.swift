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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241214/TensorFlowLiteC.xcframework.zip", checksum: "73db34e3391a3721b2eb0dcc7f8a07f1674accf70e5db32cddc28c97e0a40518"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a38589d01d651a44a7cf890a5ee5527708696b99ee7d6a830ddcc51fe1366959"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241214/TensorFlowLiteCMetal.xcframework.zip", checksum: "56c9433913b110f2161a7016d6be9e3555b4d3e5873b01efd403d58961ddba03"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
