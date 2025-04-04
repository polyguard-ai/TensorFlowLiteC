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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250403/TensorFlowLiteC.xcframework.zip", checksum: "ea8a124f7c88258a57e71cdd6810c011388fce523dd29662089515375722a635"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250403/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a1f8d1d2846a9b77964a363129c5432b0d18ebfe743c43470b2346f1ad29691e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250403/TensorFlowLiteCMetal.xcframework.zip", checksum: "e8b33ddc2fcd467b7dbec74c7512955064b0616913534b90cee58b7e4f14a055"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
