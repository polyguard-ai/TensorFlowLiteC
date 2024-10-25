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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241024/TensorFlowLiteC.xcframework.zip", checksum: "bdc8aa7d1608f6f82a62b882f4c1b49cf98c07626549ec61cce4b602d2ae13fd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241024/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4d2ecf2e100eb5bc3c112b981a98fc4df3bd126f3163ac494a963f506cd66fce"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241024/TensorFlowLiteCMetal.xcframework.zip", checksum: "f90de145295830c16699ab6715c0268eb59f27df388b9c8a4d0700ef045ed689"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
