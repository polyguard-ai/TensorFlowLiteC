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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250214/TensorFlowLiteC.xcframework.zip", checksum: "d751b72f795a574f55ac0ed22307726942a91bd79af85e471ab7f230d31dcdcc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "be627087acb0ef20af1f28a2598469988b2b60f018b92a4f3696795e0009ae08"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250214/TensorFlowLiteCMetal.xcframework.zip", checksum: "8edaed06b2ed9b8b31f21207d966b566ad68c6354b8445ac7b5f3faddee003f4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
