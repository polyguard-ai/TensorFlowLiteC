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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250510/TensorFlowLiteC.xcframework.zip", checksum: "08c4bc2a5ab9032f0b29ab43d13bf476cbb8fece020e729f2928de503ae1f33c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250510/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c34adf642fd9ac27817b27332d64592867081f84d46e1018ceecebeeca69261b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250510/TensorFlowLiteCMetal.xcframework.zip", checksum: "e00a9cb1946a4363bdcacf858fa6f1de3000d0653b9158439a72471da0220f54"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
