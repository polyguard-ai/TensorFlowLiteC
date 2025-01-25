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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250124/TensorFlowLiteC.xcframework.zip", checksum: "94fd8b558dbf1b9b1b3b9cc0e5022c16df2f897b998e9edafb2169ace973eee6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9e4534cd47e1407e7065e61808f81014005892be53abb0f169328ffa2fae2bbe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250124/TensorFlowLiteCMetal.xcframework.zip", checksum: "8a68de370a50745329de4e2e22ba02484e4bc822ba3721ea51d5043a3b38dcc6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
