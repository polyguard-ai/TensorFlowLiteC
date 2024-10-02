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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241001/TensorFlowLiteC.xcframework.zip", checksum: "8bfd24e5e6b937f265e4fe03af49a9148b0275d15e220acb38e332dcf334e1a3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241001/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1c91735e2a915cc1072aed2696adbad1770d9271d97bc842ba77c0791efe6f5d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241001/TensorFlowLiteCMetal.xcframework.zip", checksum: "abba6ac4aece6acaf5065e358570cc3c66203804707c42242e18b0a3a19cadca"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
