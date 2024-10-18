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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241017/TensorFlowLiteC.xcframework.zip", checksum: "6527153152a05ea32645d57958b0e520adc355939788dc08af32d81242f6efa5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241017/TensorFlowLiteCCoreML.xcframework.zip", checksum: "056f11081933f79af6ee306903c81fc849b195678f81cd0e48b557c6b9dea186"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241017/TensorFlowLiteCMetal.xcframework.zip", checksum: "e26ba9c7e62d745aedc5829d78603de19aa3edbd79df9550d9526fadda497e7a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
