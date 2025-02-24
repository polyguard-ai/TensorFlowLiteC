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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250223/TensorFlowLiteC.xcframework.zip", checksum: "4240c41560bdad605b513e71d443766045d2cfb6bb4378ec52e64c816c76b8d9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "51713d359dd033b9fe91d8f2a678ae4ab4ba32a71ae2d805f01ab488f2c13382"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250223/TensorFlowLiteCMetal.xcframework.zip", checksum: "3421b6d6b19e497b69a419bad8a91205cd8c31c71aa33500aae41bf1bddc6999"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
