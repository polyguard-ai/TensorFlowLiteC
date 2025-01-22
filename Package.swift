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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250121/TensorFlowLiteC.xcframework.zip", checksum: "a9e3f01f75958e335664a92183e909dae161f37aee575714364e1c407bfc46c0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fd91ae31c1464d127010c5d091b5b7cca9d58be313c9e1fa90e4e9ceaaa150d5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250121/TensorFlowLiteCMetal.xcframework.zip", checksum: "2f62837518d8153c6cbf2865d93ccfaef66b8ed593e9148f7687f7d0aa4345de"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
