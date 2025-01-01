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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241231/TensorFlowLiteC.xcframework.zip", checksum: "9cb8985ba2086a8ad1da1791ba7efcd07cbe09d03286f4adb248bad7464fc0d4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241231/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e035df392e7f984499af69f8cb288ecb3e90c500f70cdf3d52625adf61ffaa2e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241231/TensorFlowLiteCMetal.xcframework.zip", checksum: "dec1ca973dc8bb322ca2a10487e4dcc8179904a472a14730d0a4cfefcd591da9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
