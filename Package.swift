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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250430/TensorFlowLiteC.xcframework.zip", checksum: "31ddf4dc75742c9762759e834548c87979c726c0e0ab4a6e3ca71a422d0c923b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250430/TensorFlowLiteCCoreML.xcframework.zip", checksum: "78c9c89c4d190acd7d1cfc74522fe99b7b5d61672d212c5babafd9ccc0bf0b2e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250430/TensorFlowLiteCMetal.xcframework.zip", checksum: "c6f163b3add92719378d5fe78bcfdd34d6692d6f8217c8d049b28e97627dea21"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
