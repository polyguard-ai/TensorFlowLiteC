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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250511/TensorFlowLiteC.xcframework.zip", checksum: "5988b6bd7d42197b8919bce18c82a1c6051ac6d32367bf9c4d3754060d0d098b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250511/TensorFlowLiteCCoreML.xcframework.zip", checksum: "83a85539ce044499806dde0171128ff97be47c553f9905c6d515b36c35c5ed93"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250511/TensorFlowLiteCMetal.xcframework.zip", checksum: "3a50200a6fd49a6189bac3a02625645fbd01adc64ce4b2edccc909ef6bcad304"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
