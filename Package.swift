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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250114/TensorFlowLiteC.xcframework.zip", checksum: "b5201db0c0cf8effdac318d5a0415f6397d27e4026b49d1d0456237dd28af508"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0e899e71d09fc9d631d9bb76d2e01bc4a3d8f396d1299246e4a6185f9e57459a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250114/TensorFlowLiteCMetal.xcframework.zip", checksum: "31ee55543d4ff9e9664be589488e622e5b32df15a62a7991a6b5fb535d26b962"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
