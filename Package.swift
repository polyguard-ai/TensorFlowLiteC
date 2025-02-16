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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250215/TensorFlowLiteC.xcframework.zip", checksum: "ce8e3255013a3c10a1307b6ccbe5065b6c3d9519318a4443887f3cd6418cdd1e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2e81ab3491d819674a66d9c5552c9e372cac2fe08c0f58ee0072befd0a9296b5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250215/TensorFlowLiteCMetal.xcframework.zip", checksum: "7abe88fac6ed01ca7ec1a652a5fbd94d14eb84b7d54b61bebd37967e384a6451"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
