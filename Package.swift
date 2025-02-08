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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250207/TensorFlowLiteC.xcframework.zip", checksum: "19054861c6ccf81662faa1f037d14fb4e5af4e468ed2bbbc0550796fb21d291c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "20d5e4aca3b13f65124afce068524c1919c6ba3e2d67121d234e6f049003b3a2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250207/TensorFlowLiteCMetal.xcframework.zip", checksum: "32652da7efe31133a2f46ba05c77bd6d2086a70468101962ce676b3eadf10f53"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
