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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250112/TensorFlowLiteC.xcframework.zip", checksum: "bab28175d444d0042d72f6c1ea068a4ca4304c4708bbe32d6a7e9e1a5e0fe621"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "576e639294499b739b0ccc02e7e58eb346454a534345e576286ff4db379ba15a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250112/TensorFlowLiteCMetal.xcframework.zip", checksum: "3b9445cea0e3be7f886dfba57eff7478a6063417810b7bc5301e14ada75f1740"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
