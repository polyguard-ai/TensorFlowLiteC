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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250213/TensorFlowLiteC.xcframework.zip", checksum: "1b55715d58ecf7d0bb3a82257ce02476b2ef9e237b37f860446f640cc58acd4a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e55c154402bbc8d59835e2b1f020f1a80de7802d538cf93845e0ae3ab87ecc96"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250213/TensorFlowLiteCMetal.xcframework.zip", checksum: "eaafc574c953b1eca75215eea64c8012e17dbf0cc99c39ba7e79ce5768645448"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
