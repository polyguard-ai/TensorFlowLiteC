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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241129/TensorFlowLiteC.xcframework.zip", checksum: "36e69dc54c15fcc306f99129288f9438ba36f8b9ca27374b8217a145d0d56570"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a2d980a6a6e9680471cb4cea700e19506b8df4883ded3e0e08b4b1484f946aa7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241129/TensorFlowLiteCMetal.xcframework.zip", checksum: "fa605967f3faef01cf7a58b5a719c94876e21c5096d1ca56939fd513254c545a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
