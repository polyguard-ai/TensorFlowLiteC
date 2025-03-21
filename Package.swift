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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250320/TensorFlowLiteC.xcframework.zip", checksum: "e38dd608f04c729580f5a20a8d53b806d70887f1cb7ddf27bc6c5179e938d3ad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250320/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ccb8c1115815c8dd1129feca3a8e493da363f8e4d7eb82d867d762863e9d8bf2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250320/TensorFlowLiteCMetal.xcframework.zip", checksum: "62a75a09bab868be46c5a7f54f93262a922fd7d814903e7f65df8ae7252cbc59"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
