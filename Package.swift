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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241010/TensorFlowLiteC.xcframework.zip", checksum: "db0d27f34ad8d9f84a2439dfb3e8162cc35889ed94a12ac5cf501028842c57b6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241010/TensorFlowLiteCCoreML.xcframework.zip", checksum: "54f7cced7fdc1cb96d56a00900bbe32b01c0b1b4a3e5403f3f5ce9975f7f8f07"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241010/TensorFlowLiteCMetal.xcframework.zip", checksum: "dadd783d74e94a4f09de8bb202ea6ac342e2a56789baf2f4e85e9f7e393986a8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
