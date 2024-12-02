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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241201/TensorFlowLiteC.xcframework.zip", checksum: "246dfe9aa5f9f94069526e521b4b2c49b6f0131bd1e21eeb77ead303124ee20c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241201/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4d5e4afbb39fcf22bf567ebd349c405dba8bf9c502e88ad5567b7e957430c30e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241201/TensorFlowLiteCMetal.xcframework.zip", checksum: "28933412d6da3d42b44898256bc5bbd5145fd313c542869346b330166748d5ed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
