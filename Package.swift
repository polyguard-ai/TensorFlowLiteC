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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250313/TensorFlowLiteC.xcframework.zip", checksum: "3b768d011f82896404b97bc2a46a3534ca472f1b48348d73b1a4e6277bc6f9a0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250313/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e2beaa35006886a17bce16d49d959da426156e5c1cf2de6e577d480a54061f34"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250313/TensorFlowLiteCMetal.xcframework.zip", checksum: "56f91fc75c2a678936e1f0124dc53397aa5cca86692663b0cb64cfac3bc3d654"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
