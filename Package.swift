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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250529/TensorFlowLiteC.xcframework.zip", checksum: "a8b9232662521e8a773dfac47bc41c0fd658c4465e3c484589c8d4b8a6fa71d0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250529/TensorFlowLiteCCoreML.xcframework.zip", checksum: "387103739900631b87f09277c5712953d6488b5d9f2a84f93c4f26d52e4412e5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250529/TensorFlowLiteCMetal.xcframework.zip", checksum: "7ce9ca1a1e0e8433a4ca3380a8d4bdb19d2ba8623c9a66682780bd394a19c811"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
