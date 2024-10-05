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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241004/TensorFlowLiteC.xcframework.zip", checksum: "1086fa476ac875e3edd57c4f51da24eb4b365f2320e1248c21d30c874c9d0ec9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241004/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d906e37169b63b00566e45f98ec44c7b5dae1188bb65ca26181bfd3bc153bb2c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241004/TensorFlowLiteCMetal.xcframework.zip", checksum: "ad7a12156ed00b5f9c350bfab55063239ca47319f3c4d235b9ca9a06c604ec88"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
