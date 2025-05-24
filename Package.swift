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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250523/TensorFlowLiteC.xcframework.zip", checksum: "100c3ebd75d358a5a2d187cd9d486c31e9dc984a35b314fc6e8218399e3824c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250523/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ede05857f73c898ddeb3a311db7d9f99e51e3e2cb88874af88c13e883135bc63"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250523/TensorFlowLiteCMetal.xcframework.zip", checksum: "fdc0dd8c54c18d2ea2fdc62bb74d1784a726db207d1d3e5360984863dde4da9a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
