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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250618/TensorFlowLiteC.xcframework.zip", checksum: "3850e62087609b728deeb96581f2f93cdac4d2eb083d69b30e953f5f679bd347"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250618/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dcbd0a89915826f470fbf2b7344de6052a14e8357b0730965b2a568c46619fe4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250618/TensorFlowLiteCMetal.xcframework.zip", checksum: "617ec1576e965879c19f5b229a4702f2aef15859f24bbb28d2e32a9bfde7287c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
