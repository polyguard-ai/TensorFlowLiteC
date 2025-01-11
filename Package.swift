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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250110/TensorFlowLiteC.xcframework.zip", checksum: "cde6162282b9b0096a86e8a9319872502977021bb2023ac2d31ae99077c4fd38"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a1736cecb7243002782b767f9c062cc86d3214cb6e192b1a0231b3dd745208a8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250110/TensorFlowLiteCMetal.xcframework.zip", checksum: "8362ae7443ad35ff279ab8aeb116caed2db1d963cb653d0aea89d75ae0a6c1e7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
