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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250601/TensorFlowLiteC.xcframework.zip", checksum: "58f7c722379dd951006415386d6cd9d23f943255d7f072142bdb36a2f3a45cf4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250601/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f9bfad3e2edee3175fc873dfb70e723c437abfb8f0e734dfafc5681a756de10d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250601/TensorFlowLiteCMetal.xcframework.zip", checksum: "996a8a0e5fbfee31062c55c620e74265a4eba88fb0ba80c6f4064c0c0e06721c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
