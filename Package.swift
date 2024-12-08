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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241207/TensorFlowLiteC.xcframework.zip", checksum: "034520c295a892cdd058e68a97d8346b722298c34da94e244d66856727bd0e55"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5160c37b5bcb2edadf8571cdc5de789530ab267f7260753176dc3ed13995897c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241207/TensorFlowLiteCMetal.xcframework.zip", checksum: "37f86fe211531f1bc99ca12a4844759dd1e1586327daf997d55da08988e641f6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
