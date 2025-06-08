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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250607/TensorFlowLiteC.xcframework.zip", checksum: "6e3d43447ade0a0a0835d0436284531bde98eddfa9cc32c2be739664826db60c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250607/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1f76dd9ee4af37097c7d471e224f3f3cefd0d07a2ab1672199a40ac644149d76"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250607/TensorFlowLiteCMetal.xcframework.zip", checksum: "200d8e1e7875a6326f7bc51fd17c1537b13ed7c8aa36fcfb9151f3790ff5627a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
