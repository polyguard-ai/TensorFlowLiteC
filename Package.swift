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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250414/TensorFlowLiteC.xcframework.zip", checksum: "b2448b077907160f6aeb20594a6ae92ca20789f011b4098fcbe9c03e56c1b3a5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250414/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4a1e3f8f24d54e21198aae9877881e043e187696a76c5ab9b1d9873bf7bcd889"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250414/TensorFlowLiteCMetal.xcframework.zip", checksum: "b6ffc84af0dff8ebd41a438cd5e9550dc9c404fd1f72cbcf917aa3de2bdaa9dc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
