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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250317/TensorFlowLiteC.xcframework.zip", checksum: "0ff85c17467d3754284f00ca73ddde0e68aad0cc5cc06c4368466a809e3a27b6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250317/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c11534adde9a7cf87258f1d9c80a235389645be723b08f8bc3b35889ca6b0b59"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250317/TensorFlowLiteCMetal.xcframework.zip", checksum: "63f9cfa33c188a9c956433ac025b1cedf6cd8b32945ea38540ba1b189486859d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
