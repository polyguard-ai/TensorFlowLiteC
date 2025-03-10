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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250309/TensorFlowLiteC.xcframework.zip", checksum: "b514dc5c600f2d3242de1cd177828f579b620f3d0624fec615d5c536ca64411b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250309/TensorFlowLiteCCoreML.xcframework.zip", checksum: "869ae9b34884d9261069ee73b3b82d7f3ddbd9bfab44c53c55b754bb0929f219"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250309/TensorFlowLiteCMetal.xcframework.zip", checksum: "7db810745c3252e7bb77c2a9e4fc01409fc4d45c1a0e1bd36dab12a0e281174f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
