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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241229/TensorFlowLiteC.xcframework.zip", checksum: "03ddb43411870acf2ab71fbdf14e96c2a514407b4a8d817473a41e6e688c4c6c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241229/TensorFlowLiteCCoreML.xcframework.zip", checksum: "39a8fa7d856a97d85f8ebff877bcb8eb211204c004b594e30bfeea8ac805de48"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241229/TensorFlowLiteCMetal.xcframework.zip", checksum: "9225a5fb36aff0639940ef7e78c2dab44800761952b3e1f02bff20a66674c144"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
