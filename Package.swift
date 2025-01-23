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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250122/TensorFlowLiteC.xcframework.zip", checksum: "e5e0b8acefa134c813b56fe37f7784f9bbdbef0db7d0044e1bc722852cb82075"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "26c96301838ee605376886c86c8c111805f45cea282f0f3d23e3fcc79bda93bd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250122/TensorFlowLiteCMetal.xcframework.zip", checksum: "302ef487ef6d16d11adba440decc1b7df9a0cc1b4a765a2b6d0556b5029d77e3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
