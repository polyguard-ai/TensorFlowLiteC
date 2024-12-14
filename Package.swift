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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241213/TensorFlowLiteC.xcframework.zip", checksum: "b6e5a8cc0bf8dc4c04a552e505bf72e132e422d9278734f0bc5794dab5ec6327"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "11d6014740d52613c980be851a6ca2e4002b15093a83b277801b9dd1fa87f77a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241213/TensorFlowLiteCMetal.xcframework.zip", checksum: "1913a5f3ad8a623bf4d149408c90e3fd6dd4abd4527912f3379c5baec053a8bd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
