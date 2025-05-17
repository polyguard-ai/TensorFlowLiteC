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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250516/TensorFlowLiteC.xcframework.zip", checksum: "70d55a0f545c175a71989f1e174edaa74088ddafb1620b9afb2235c2b5ca54c6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250516/TensorFlowLiteCCoreML.xcframework.zip", checksum: "50a600ed0361d44a42d56f06c1893b8ff067e2f9b7a2e4024385dfea28446e00"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250516/TensorFlowLiteCMetal.xcframework.zip", checksum: "089e3343086c7c0a7163531f81095d84cebdd119f21bc5b39cc3b218093e2414"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
