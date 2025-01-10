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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250109/TensorFlowLiteC.xcframework.zip", checksum: "f8788ab749b542f72e175992dfbce02548495da5d94584e9e7508d9cf88c51ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250109/TensorFlowLiteCCoreML.xcframework.zip", checksum: "58a1aeda0c367af2fb542e4404194bd776ceb5ac3df1f4afc5d5bab85fd4cf1d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250109/TensorFlowLiteCMetal.xcframework.zip", checksum: "aba0beb03b46c8dafe94f60b9beb5a087005a932e6b76ead2211e5c89036ff2a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
