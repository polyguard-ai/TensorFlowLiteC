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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240927/TensorFlowLiteC.xcframework.zip", checksum: "f502081101dde817c44e4d16ac1c30f5f01c393c4fd86ebefa5cd95871415ab6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240927/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7491ea71e93d1afaee1ddf973e45e18368902a926ddd51b7397e70a9499b5ce4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20240927/TensorFlowLiteCMetal.xcframework.zip", checksum: "7a4385045f560df04a08da9a793c1af4751a39b296ed8cdb8b8fa0c82940bab7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
