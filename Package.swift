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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250507/TensorFlowLiteC.xcframework.zip", checksum: "7be526f468844467af2c1ac8541a0adeda815bbb30fa1ccc717460555bfed8a3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250507/TensorFlowLiteCCoreML.xcframework.zip", checksum: "26bae23944b76ad57f806de6611d444c24d3ac5be11993f7525f1918e133f2be"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250507/TensorFlowLiteCMetal.xcframework.zip", checksum: "5bea09edc1cb9b492615c969957b26a0ccc02537dfeac659b8fc39f582090e98"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
