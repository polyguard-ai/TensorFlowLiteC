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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250222/TensorFlowLiteC.xcframework.zip", checksum: "291595d1364b9c45b2619d9ec01bff231331d73df8577847276d5c036e82f64d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d3d0eb186fc3a066442883f214b0ed2494f0f73da929c55a2416ca8a03bd4fd1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250222/TensorFlowLiteCMetal.xcframework.zip", checksum: "fd197d91e481c501695ed92b4230528794e6f03ccffa1c131589b5bfd4de0e58"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
