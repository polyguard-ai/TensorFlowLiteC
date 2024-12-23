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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241222/TensorFlowLiteC.xcframework.zip", checksum: "871db95ab12c6390a478a9f15bd3700efd063aeedaf2ea7a9f6070dc5f513a29"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9b99dde1662e8cc6203ce2a1ee35504723b2fa63f6f2ff4f5ef86ba8a775a328"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241222/TensorFlowLiteCMetal.xcframework.zip", checksum: "25f743df2b151cb88af118e76b1abe7d2ddd5880bdbb548a913e1a9f03612f32"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
