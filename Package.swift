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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250203/TensorFlowLiteC.xcframework.zip", checksum: "529bfdaf7be7cbbe59d28040293ab3ffc7cb615fdfa9f55ef36a022739e2ac41"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7c47e7707ae0284f0abe1664c06cca82e4f6561135aaef1737610fb360ed4c84"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250203/TensorFlowLiteCMetal.xcframework.zip", checksum: "896c5c48b02e10832e33545559e1235add0ce6e7962d22efef4e895c41c41d68"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
