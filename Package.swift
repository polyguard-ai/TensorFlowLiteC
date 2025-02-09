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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250208/TensorFlowLiteC.xcframework.zip", checksum: "15bd0ba93d3709a28afeab3b5acaff4563b1a08a9913f682dfb782413744f258"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "81e11edb25745e92995a0f8aaeeab737ca09f9c84343d7d9aa00b1f0e226724f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250208/TensorFlowLiteCMetal.xcframework.zip", checksum: "39e0c5203a43c1e5a4ace138b937aa3e1886088576033bf608385fb35e64e7bd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
