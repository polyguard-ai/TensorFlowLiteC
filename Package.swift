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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241003/TensorFlowLiteC.xcframework.zip", checksum: "f5618114be715158bc81ebe8b86c4d25a8ec9514b773b89c33d7cded38647102"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241003/TensorFlowLiteCCoreML.xcframework.zip", checksum: "97c5d9ce5e604f3357656ff4ed0bcfb9bace7b261645338db317f3b6c861015b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241003/TensorFlowLiteCMetal.xcframework.zip", checksum: "9e90ccc52f40b06591adab5759b30f3ac5f224db20514fe1a9ec32471afba910"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
