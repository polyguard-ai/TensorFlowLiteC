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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250107/TensorFlowLiteC.xcframework.zip", checksum: "e0738f378d99c906ded0a5200c396561ac0e88d74321c73ed503a6093e7a79a9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250107/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a24798ef2fa97663d8a76722a06c704c6f118196f0809cd3a51fb91555cbce1e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250107/TensorFlowLiteCMetal.xcframework.zip", checksum: "56023eddd03637cdae34bbbfa0449e2f71fa31983110e04e1ed8723dcda90df7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
