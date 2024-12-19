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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241218/TensorFlowLiteC.xcframework.zip", checksum: "bf919330a2222dc401925522aa18d31e2d5eff3b3b5d61c4156d6b9b3b9c90fc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f94b620caa257897199fbc78d84e554917d6d36208db753fd9681d334ef4cec6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241218/TensorFlowLiteCMetal.xcframework.zip", checksum: "306c151556d67e239ec96736ebf64be57219857a366939bd772df045d070b919"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
