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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250603/TensorFlowLiteC.xcframework.zip", checksum: "4af0aa6049767f7baa89f1ebb13a76b961463f3d0bcf59dbcb7ba5513e18b154"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250603/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bc3230a8a298608ec8b6c738564071e11198b3ec348a99539f58492f7f0f5a14"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250603/TensorFlowLiteCMetal.xcframework.zip", checksum: "6e0823cb12f053b34d5eb365b64673f4598c56641a3d5ff72bf2096d7e3be458"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
