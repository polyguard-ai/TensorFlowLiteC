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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241217/TensorFlowLiteC.xcframework.zip", checksum: "547d49974af1282469bd2cef79e174c8efa18f9e719cf09d52e55c48a5e7cbcb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2cae2ff890b506af6cdb9117d05a6cd02dc285b4a8f462572b39706af54eb770"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241217/TensorFlowLiteCMetal.xcframework.zip", checksum: "12b8c83343a37904bdb7c8dc0ea6aa46337cf19408354b58661015778be65fa6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
