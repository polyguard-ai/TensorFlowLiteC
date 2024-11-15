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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241114/TensorFlowLiteC.xcframework.zip", checksum: "78a3f0343d314e82d1871bed72fd882937be218bcde72e22f440a70c74b9fd31"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dd1540db760c923f9faaff71ad41d5375c8a7709a1bbdf8d3d701271a1ace671"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241114/TensorFlowLiteCMetal.xcframework.zip", checksum: "10bbde5906b8aeab131957d9aac819fbac5b589c1bc430c8361c08f4073facf3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
