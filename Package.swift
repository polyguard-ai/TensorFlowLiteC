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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241117/TensorFlowLiteC.xcframework.zip", checksum: "f90e173406e735d54a928983641db209731af5a5893c194e18cfafbec5c6bcd7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "baecce486f8d79cc2e1cee86e4588d682d8f44da27779bd94658b086475909f7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241117/TensorFlowLiteCMetal.xcframework.zip", checksum: "65fdd5b6edfcdceedc804b860ef76f4aba8291e53d1e783cfc6df92a68b04e2b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
