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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250211/TensorFlowLiteC.xcframework.zip", checksum: "541451547a0a5cb35ee98a22b1cda0cb0fded847bd300325c0c0dcb3af1a19b0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5ddb1737026a67f000e7324b2fb04801a404087e3cfbd01e75dcc16dc54c720f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250211/TensorFlowLiteCMetal.xcframework.zip", checksum: "87d41d29ca4d49e8d53193f783a4ac0b375dd02605c237f97f9307efcfb5d10f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
