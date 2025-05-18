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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250517/TensorFlowLiteC.xcframework.zip", checksum: "7bd05c459cd166ec8a57582d7ea2ea9b4379860f549ede293c81dab5d7b7b240"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250517/TensorFlowLiteCCoreML.xcframework.zip", checksum: "db3352c9465e3db40f33c40d14cd097fee7ba13c535f37771b541aadc6822262"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250517/TensorFlowLiteCMetal.xcframework.zip", checksum: "1a2446f7b1e3e247f7e44510060a66263fb28af26a6a204d28bff7de73377316"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
