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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250402/TensorFlowLiteC.xcframework.zip", checksum: "f32bb86eb3b3ee82b75aadd678875d51084d02e85d714de9d116a259fc88db68"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250402/TensorFlowLiteCCoreML.xcframework.zip", checksum: "47df02ea5ee4c940561ee5664cb800f033730b5f31e255b7ccb8f022f9477436"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250402/TensorFlowLiteCMetal.xcframework.zip", checksum: "f79e27aa1d87d078f933a48d6bfab97eded249899de0a50c08bf755457ea5b73"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
