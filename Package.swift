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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250125/TensorFlowLiteC.xcframework.zip", checksum: "bf13ddf58cd1aeb7593b3ebfe1f31721c1c14215e7c4f70de0811f0aabebae7b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5bf683e0aad96d06d46fddc9ca5c9a86bcd377cea6ea363bd2fa7b16babdd354"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250125/TensorFlowLiteCMetal.xcframework.zip", checksum: "9d58b61a26932d96f73d11b01eb06839e94e8ce7a61f7f72821a6dcac48a25ab"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
