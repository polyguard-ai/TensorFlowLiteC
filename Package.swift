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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241009/TensorFlowLiteC.xcframework.zip", checksum: "132d81c8ded256f143adcca2ea29f6c20643b09358f8bf0d014edff3c4e710c0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241009/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b44d4ae25c8c0ceaedbaad0e558c7111d481bd5c592977ac1a98dcd9d87017ba"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241009/TensorFlowLiteCMetal.xcframework.zip", checksum: "c57537690e71468efd0ff1a241d240edef4d7f4a3eea4033a44d9908d6b5f7e7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
