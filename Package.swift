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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250123/TensorFlowLiteC.xcframework.zip", checksum: "c67e7ec3dd33a337dc7b3c140d176feb65c7536f9613959cd8dc22fdb0586ebc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a0342594ece33013f4da312312f57a1be2342c62ffe731bd64668dec8d827e3f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250123/TensorFlowLiteCMetal.xcframework.zip", checksum: "bcad530380e8c11c228086f409960cdc8685ba7840fc7524d944c33ade83175c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
