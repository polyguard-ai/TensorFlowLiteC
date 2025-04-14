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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250413/TensorFlowLiteC.xcframework.zip", checksum: "8d128dc08766214699b27626794392617ba51e0576e491c9970c2ac0131e8a85"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250413/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9e67d381be969f90b7b3d219b4e67e9c453216e6bc2e91a388e40f028c5c3509"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250413/TensorFlowLiteCMetal.xcframework.zip", checksum: "485bade32a2cb7949e137f6687c5e66468d833ab0592f0d5134e6a7d7b4004b9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
