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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241202/TensorFlowLiteC.xcframework.zip", checksum: "1a7a6db7b37b38ce8246553669f76666b16859ffac705b3595c45314e3c312c7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241202/TensorFlowLiteCCoreML.xcframework.zip", checksum: "252501177330416284b0122261153564f911f98ecc48c93a3cc32d3660d2dca2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241202/TensorFlowLiteCMetal.xcframework.zip", checksum: "23b039b75e0143bdac99fcac179b3039313d001ca60a4f167b9e7cd0c978b5bf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
