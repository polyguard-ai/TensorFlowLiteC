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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241119/TensorFlowLiteC.xcframework.zip", checksum: "392a54398cf9b580a087f15b1f8ad944b0d8b11a30283c5362a5926ff4fd92ae"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "45ff389b411789c581b25644a412d073be880cf9142188e548dc0434f052583b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241119/TensorFlowLiteCMetal.xcframework.zip", checksum: "2f85c27013bd4b152806aa9573a859f7f36857261a0d07b83c75f2f531f5807a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
