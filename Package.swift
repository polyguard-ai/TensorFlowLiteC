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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241111/TensorFlowLiteC.xcframework.zip", checksum: "36206ecd77d741df7cbd98df58dbc771a7c628e4f4d3bc61bf164624563f8d56"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "29b9e8509d59f17b98c6b34380aba1951bc008096b8418ef3e61743f9a3c3993"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241111/TensorFlowLiteCMetal.xcframework.zip", checksum: "61be1ab997582c3c73354f7d8c042dab5b29df9413c39df71239b4ce03320736"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
