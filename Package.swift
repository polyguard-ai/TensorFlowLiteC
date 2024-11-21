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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241120/TensorFlowLiteC.xcframework.zip", checksum: "3e584dead4d8889880f3bdbad38ff62e9fea65c913e95da472ae7498f547acd9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241120/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8e6eb683a88c483d1df85015da159160527d6e51869b8df43e07e8c8aee0c6ad"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241120/TensorFlowLiteCMetal.xcframework.zip", checksum: "d44cd91dc4776821b5d74d53d26bb494af694538331d340f1a2f06648ec34fa3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
