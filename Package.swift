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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241026/TensorFlowLiteC.xcframework.zip", checksum: "c09aae2698eaa3e864828a41506d333a4a361fb195b2e8884c76d5b114cf483f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241026/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0d175691fb28320d36fb56ef69abc1ee61c8e60f147cff5bd4b1b265a8373d37"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241026/TensorFlowLiteCMetal.xcframework.zip", checksum: "653299463c72da75ac49aa5ffe2a97ddca63853a18dac4a3340db2a37ab2a839"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
