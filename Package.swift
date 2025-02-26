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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250225/TensorFlowLiteC.xcframework.zip", checksum: "790a4b6e2435315c2dad190df09f12cdad276312dba4989997dc125c808665a7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "42a49b2054264521acaa425349031dc74d4f25b15b927d525f2e0b1b6b067364"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250225/TensorFlowLiteCMetal.xcframework.zip", checksum: "b29aefab3579aee5393830d656a6d98d5286d5a812ed5a4dc27af1cbb4d71bc5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
