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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241014/TensorFlowLiteC.xcframework.zip", checksum: "b599370018c8274c59e1b15c35214dc431149f0cfe26d115d1b7e75cb15a6d0f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241014/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3b98e66919192d7196a50922d6f7885cba44b02b5bb831a621ba837f65f57a48"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241014/TensorFlowLiteCMetal.xcframework.zip", checksum: "437b5ad96f3ec05c235db969c32997f7df48f47498a5f9f2852eb711c33681cc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
