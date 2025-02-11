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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250210/TensorFlowLiteC.xcframework.zip", checksum: "f9da2dad988fc87b2f78366df47b3148c0c10e9804179f17ca2c20a0517733cc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1f20e8d76fefd0751b4ac8d861bc9bb89968fbf7decaafe8a92ffcbe118ff29f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250210/TensorFlowLiteCMetal.xcframework.zip", checksum: "685940cac6be5221efe2a6af0f01393b3bb1452219bc691fe677441468bff0c8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
