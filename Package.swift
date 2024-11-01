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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241031/TensorFlowLiteC.xcframework.zip", checksum: "e24f0db4733596dccc6c835748b0d0b73f04fbca4c6c14969dd009d253528915"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241031/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7b87dc21c0c44531809ffb20c356ee43b3b07653b8d0a1d3c446470bdbf36dbd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241031/TensorFlowLiteCMetal.xcframework.zip", checksum: "a67e4e6fc56aefdc8595f870e5f94ee3ae6d12e0668faf9065e662018aa69f56"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
