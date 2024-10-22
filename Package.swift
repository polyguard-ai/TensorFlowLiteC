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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241021/TensorFlowLiteC.xcframework.zip", checksum: "4f8a49351f3077798e7f5cb0b92fba1ed71bf344f7f2f2455d3cf25a92884586"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241021/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2a896188dbc52642008a0d9c44e6f19ff595758a21b3826b70a084aecf852170"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241021/TensorFlowLiteCMetal.xcframework.zip", checksum: "70bac7e0c39d6336ce1423b5cdc9a7371d1f8b7351dc12ce0715fbb5d7fe128a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
