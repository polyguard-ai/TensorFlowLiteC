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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240924/TensorFlowLiteC.xcframework.zip", checksum: "492b9f5f2b805aa50361d6d6fbaf0c1ce3b14f97a46f09d0bff1d05165916fd6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240924/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e54ab67be64ad7f94ebf3654c5b6aaceec7b8d81ba6bb4c3e0aa9440994aa173"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240924/TensorFlowLiteCMetal.xcframework.zip", checksum: "d1459e3ccb456ab00f7e8faa4dd64cc2cb2fdb580360ff048b3100056a5e4956"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
