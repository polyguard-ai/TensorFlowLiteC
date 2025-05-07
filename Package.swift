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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250506/TensorFlowLiteC.xcframework.zip", checksum: "65e1c16c36907ad972b01296e527843f0bb876728f2c211213d7bf2511da7011"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250506/TensorFlowLiteCCoreML.xcframework.zip", checksum: "da6e8f53626af404402aab6a16de5273ef01932b4e2862102886b07783dfa55f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250506/TensorFlowLiteCMetal.xcframework.zip", checksum: "cd01a2f73b0c2014ec6918204ac4503ca07ebde55b27ab129fcbc4966a4a0619"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
