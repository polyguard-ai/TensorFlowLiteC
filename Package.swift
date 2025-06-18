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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250617/TensorFlowLiteC.xcframework.zip", checksum: "0576eec37a37b5db3ba0d8ddf41476a103a439214fe05ab314c444652f9034ef"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250617/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1390d2e36d9a13a88d7bfc96f27834a1c6a161b1950e6ac3fe28889b1f2f5007"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250617/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f6e09eb49ce6b43b84b2309087e89a3856006ad1266f7f5dfde6fb8ea34a3a0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
