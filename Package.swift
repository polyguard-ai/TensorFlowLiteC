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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240929/TensorFlowLiteC.xcframework.zip", checksum: "44e9b7a7df06791b0a152dde7dbf91f9f243a3c2c8503cb3ba7d223a22041acc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240929/TensorFlowLiteCCoreML.xcframework.zip", checksum: "419728f4e1c06f73ebacdb564889ed3c74a0462e2d8ac61cf15c8f1bc1968fdd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240929/TensorFlowLiteCMetal.xcframework.zip", checksum: "d529d1b5bf4919b13e2a8a20a242a0e3d071d2906281a2e5f66ae6ec0c2cbff3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
