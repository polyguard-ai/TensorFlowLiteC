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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250526/TensorFlowLiteC.xcframework.zip", checksum: "3490e82aa4f96e210bc8ca886df3df95756bb6f9b48e1579305b61a7af61d9d7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250526/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8dad779956663b251e0a11ae98f1306ab519124885aa1763ebec3f92df54d6fb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250526/TensorFlowLiteCMetal.xcframework.zip", checksum: "31b0c52137dd746f238d7e8db1b1de6a7bfad47aefd2e2fa873f2a995d1cf968"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
