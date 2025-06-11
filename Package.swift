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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250610/TensorFlowLiteC.xcframework.zip", checksum: "b540b319a9104a36151489102eef8db6a10b32bc4991d9b4247c9ac0ecf60795"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250610/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2dbeae296873e7d8e341f8ebddfcbfe0235421ea86ac280c72af4edbff9f1fc3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250610/TensorFlowLiteCMetal.xcframework.zip", checksum: "e254dd73cc21b11cb9eaade48d9a16a661e800e1397c66b5b327c1cc1369d1de"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
