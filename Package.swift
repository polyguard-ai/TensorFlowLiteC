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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250314/TensorFlowLiteC.xcframework.zip", checksum: "b3b38598682a71fa6c44ece8ab2215af063a6c610713c97ac60976b9ad2eea21"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250314/TensorFlowLiteCCoreML.xcframework.zip", checksum: "df1e56ddbffd35adb0adec2d293d24b4c63eda43dfe9e741c61df12af68a4f56"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250314/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f9fd776dcb0c9a56935d760dd8ffc25a27c2b62cd16e204e5be9eda5cae0fde"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
