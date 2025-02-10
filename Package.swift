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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250209/TensorFlowLiteC.xcframework.zip", checksum: "5aea6e3cc39bfce3c30e5f955d68aaad7a5b2a23047183ccb2ba8fd8ad021d6e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a27d7efdd4e83fd291369cc2e1b787dae403deeae5305c189f79acd2e21029a7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250209/TensorFlowLiteCMetal.xcframework.zip", checksum: "c680f098ade370e64dece7116b814d09dcbbe3c4dde28d2a1d453477e21a3f0e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
