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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241020/TensorFlowLiteC.xcframework.zip", checksum: "e153444165b3e3b8dc6b10eab38eb76c0104bd5749f6a1468ca1941654f102fb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241020/TensorFlowLiteCCoreML.xcframework.zip", checksum: "221b1589c2b0cc91b3dbc2532d52494e70921e957ed432649f5da37bb0d68199"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241020/TensorFlowLiteCMetal.xcframework.zip", checksum: "8b988c454ae8ee5da743c61b597f60915364e78c069c0711411682ff0ac48dbe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
