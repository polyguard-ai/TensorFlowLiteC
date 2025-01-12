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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250111/TensorFlowLiteC.xcframework.zip", checksum: "668cc3afb909fb15a920331a186decc6a2845a5fde4b568bb0344cb701d6e29d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "deedc4fcf5927dc17d8e95c9c079689ab9644c75e1eba8878e669f8c08763b5a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250111/TensorFlowLiteCMetal.xcframework.zip", checksum: "810288bbb7c03dbf771b6b0c90a577e863a8cf3c67a6c38c8d31b9d78a13a934"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
