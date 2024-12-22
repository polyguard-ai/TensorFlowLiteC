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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241221/TensorFlowLiteC.xcframework.zip", checksum: "c4b4369f60be9c44f44e432e5d9cbd4a0fe9a4e50d46e53af4fdefae319e15af"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "71f4e63c7f47480c70a4f1259006ed7156a9e0eb207f5c92199bed546df669dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241221/TensorFlowLiteCMetal.xcframework.zip", checksum: "ed4b93622069b4a49e015cc59b336ca5e268d0fe92af6de9119c576fd1716167"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
