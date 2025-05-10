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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250509/TensorFlowLiteC.xcframework.zip", checksum: "c9c997cfb3c51d66d910f5c9fd049626f832aff06732450e374d0eb35f35caf3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250509/TensorFlowLiteCCoreML.xcframework.zip", checksum: "823d24a66658982f3ac250b6f9ce559c00d0114246ca9013b984af76cd4bbb2c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250509/TensorFlowLiteCMetal.xcframework.zip", checksum: "2f80642cb2a5cee424ba6c7961c29560dfb98d2e6eef92354e50cd84fe9ecb63"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
