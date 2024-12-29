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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241228/TensorFlowLiteC.xcframework.zip", checksum: "e3553a5d061baaf77f9b44e21ff41aaaf2bbdd0436d5bbb70fabc59373fb074e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241228/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b7378679f9ebf37cf7174a6c7451bcfd792dccdc619722a591e0e4a17ebd6b07"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241228/TensorFlowLiteCMetal.xcframework.zip", checksum: "55d61405e9758f51de0911d5517a4abdfe8bf9dec395d0ea1502222690af26bf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
