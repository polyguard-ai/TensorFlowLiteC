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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250608/TensorFlowLiteC.xcframework.zip", checksum: "0ea3a8ba8dbfafdc2b3df1a8160521038b49425a4d76a11cc1b67e3f65e75e06"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250608/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2e4f9a5eebda347ca4d8d074197827014f0f59000536082404547e765ec352f8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250608/TensorFlowLiteCMetal.xcframework.zip", checksum: "c222e5f7b6603bfc2dc5982257245929cb504e1005ce5e840793b96f70aed9f4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
