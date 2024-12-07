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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241206/TensorFlowLiteC.xcframework.zip", checksum: "45648ddf3917bb3cba916986857ec265c0376ccf073451dc5249099d53599c11"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4ff46ba897c61f2b4e7f87c740b2a29edab2b950490497fda5d399a2ef62ac33"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241206/TensorFlowLiteCMetal.xcframework.zip", checksum: "ee916ee6f3fbb6584fe4c1aaf41d5f281c5eb6ab88ad18a94641fcfdf4ade7e6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
