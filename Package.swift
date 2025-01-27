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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250126/TensorFlowLiteC.xcframework.zip", checksum: "f3514ffa729bdd3d2e955487f20c5bcddd456031d50fe0c3f0135d076a09fbbd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ec6b6ef3da116356e64682fd7016fb77297e841a22e27e9fd6315ade644f49da"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250126/TensorFlowLiteCMetal.xcframework.zip", checksum: "0653a3d0ec26fa569cb07bc8f7aec2e554004ffcbb00f1ab304370b968a74716"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
