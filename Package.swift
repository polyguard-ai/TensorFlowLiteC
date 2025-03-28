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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250327/TensorFlowLiteC.xcframework.zip", checksum: "d156d709a93c017ef07d2bbb352e65e4ce855a3ee4362114be54cc812af0189f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250327/TensorFlowLiteCCoreML.xcframework.zip", checksum: "adbdcaa989ed09292fa785a83c170fd61b4ecd0b46326bb1ab5dc224d29639bb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250327/TensorFlowLiteCMetal.xcframework.zip", checksum: "95ad42c484c5b83008c4629162f42041cda27fd677e70ce2fdc788137795e259"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
