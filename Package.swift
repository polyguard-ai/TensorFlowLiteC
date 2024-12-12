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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241211/TensorFlowLiteC.xcframework.zip", checksum: "31995578936873b3fd4f641aa53ae3c7b20cf031e5454b25bede736751e5b24e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6fc26bc223210d671371d4aedc2503ee3c2d692189d0ae00ad622c632b2ab7a0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241211/TensorFlowLiteCMetal.xcframework.zip", checksum: "58d4e1ef700f838b92fd9383a23ea59062d02a9ba8e5950cda425d20053d7883"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
