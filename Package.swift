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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250323/TensorFlowLiteC.xcframework.zip", checksum: "35a7e114420c5519f5498c28cf69f4593a03b05cfbcd2ce6518c8c1fab5976b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250323/TensorFlowLiteCCoreML.xcframework.zip", checksum: "02fddf73cc003bbf57c9eb719cb39bd9e9e4f4c92fdb9f2cda564ab89151a30d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250323/TensorFlowLiteCMetal.xcframework.zip", checksum: "96a2cd5c260212ada2c767cfff2e6a7ab3f89de05f4efe3bf70daed07bc19e6f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
