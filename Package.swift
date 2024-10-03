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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241002/TensorFlowLiteC.xcframework.zip", checksum: "e2e659711b608a0f3647204af92067b6381df04116c3ce9538c312c934712db9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241002/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a0522d29803b1e6a4e3b294a544d58ed854aec1811e8acbc6fa3b5e37aba2a59"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241002/TensorFlowLiteCMetal.xcframework.zip", checksum: "05bd61ba0dada377be213f361ec521944986283d93112ee02101dd1e661e0fb0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
