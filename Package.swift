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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241210/TensorFlowLiteC.xcframework.zip", checksum: "38357a6cefedd363968ed4c1bba00fa1396f3fb2cd5b19689755b0eb83a8875e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "beb9d08940188a162ee522d52c03fd5372e507615fc65263e713a7610e3410ac"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241210/TensorFlowLiteCMetal.xcframework.zip", checksum: "ebac46fcd34231301584208e9436fc8a58db938617ba5b9436d0e234e0def67c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
