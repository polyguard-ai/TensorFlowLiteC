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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250212/TensorFlowLiteC.xcframework.zip", checksum: "d8a604e956ebb7b5297baf5a384434dd893357018f47d8e57d1c38635665b6db"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a7b220569e9ba63af58bf4d877d463e66af0fd1157eaeb18b7f99dc70bb139e4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250212/TensorFlowLiteCMetal.xcframework.zip", checksum: "0f227180e8de8239e3bab75d5af69ec210e3daab345b00ee1890550056ae80ce"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
