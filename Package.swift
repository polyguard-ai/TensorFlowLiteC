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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241212/TensorFlowLiteC.xcframework.zip", checksum: "491ad89c09c3e5fa5684a208d442d25b6235950f58d35edac82ad460b47b17a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "131475e36b52c9ebd99012a0027589a182f8567e5965004f22310d2bbd2b97e6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241212/TensorFlowLiteCMetal.xcframework.zip", checksum: "11ad286fca10d7e8c5cecdd30177662a979ed335abd971961dbf6db29b580e5f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
