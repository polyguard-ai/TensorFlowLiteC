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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241220/TensorFlowLiteC.xcframework.zip", checksum: "ba7552f4d1dba87f12835ba38593b24890b9afac07d8fa2a8a4b7c860a83965c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5f471ff72cf758c7b7359befdb2409a96f41c137f7285ef22ef40f22f62824de"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241220/TensorFlowLiteCMetal.xcframework.zip", checksum: "7f5b2ea8557f68fe38cbda644adfd299c629f532c37159eee27f43c6219ad14b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
