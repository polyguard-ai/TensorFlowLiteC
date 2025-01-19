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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250118/TensorFlowLiteC.xcframework.zip", checksum: "7196e37880b70bba9f7bb3bbe2432cd1f3b702448e246a669a525c2feeb1a05c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250118/TensorFlowLiteCCoreML.xcframework.zip", checksum: "145973937867a34be030c24384553a3d12433bd7f01d55f2e1886abe11acbee2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250118/TensorFlowLiteCMetal.xcframework.zip", checksum: "c900d4229f54250d94d6d7e7e4d018b57329e1a767a6059f7f5399d57110b316"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
