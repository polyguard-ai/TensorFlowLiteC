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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250331/TensorFlowLiteC.xcframework.zip", checksum: "a073a9da82a07918a72a1cd98c03bd7c3d5208281d40abb2cff10802546044ba"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250331/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c86636d4a5bf894ba7ba629f5542127f0be3ef7bab780e776a35f015d58be914"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250331/TensorFlowLiteCMetal.xcframework.zip", checksum: "f9d79c222f00f665647b7f9f917801b5170d4e870581f0b5fc50ff68f4ca2db8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
