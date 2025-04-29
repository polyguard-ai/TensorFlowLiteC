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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250428/TensorFlowLiteC.xcframework.zip", checksum: "bcc3f60c0f77ebc0341312760160d85e5da29f4e1ceaa3b0bad4d719f329b845"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250428/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1e535537799e66ef52908885c2f84185a99ff5af5de47f6705ae84d948ae1fa8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250428/TensorFlowLiteCMetal.xcframework.zip", checksum: "db205b2852fb3d511f0bfda1eb9ce419861da6ed9c03d35fa652c581f1327ab2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
