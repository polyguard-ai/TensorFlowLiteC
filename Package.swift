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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250502/TensorFlowLiteC.xcframework.zip", checksum: "7aa70d2e8b417e7521b40fe06833bec848df0e2d7305701319217a976b81ae57"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250502/TensorFlowLiteCCoreML.xcframework.zip", checksum: "076b93ca3dde3bb884612305ee2e832c9e307b7acd9864ebe6e99123bb85da97"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250502/TensorFlowLiteCMetal.xcframework.zip", checksum: "83e0f21dd27488a544c84a79a7ef5b61a23558432011c9d9aade1ec6d7cd8fe6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
