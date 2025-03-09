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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250308/TensorFlowLiteC.xcframework.zip", checksum: "aa0d2115ee79170aaf9375ef3d3ddcb0d08f5a8a393e3e3b0addeece0fa9a916"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250308/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d6a4ae393020bc2383130d18602037fc688275921f196a305e1dbd9f72a2a1ab"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250308/TensorFlowLiteCMetal.xcframework.zip", checksum: "104798526592bbaf79bd5ab3e13e4661d5e6140005c7ceae7ecfb24aa24a76cf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
