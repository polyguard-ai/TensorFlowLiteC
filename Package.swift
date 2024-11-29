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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241128/TensorFlowLiteC.xcframework.zip", checksum: "5f44e5912dab9468bd1c760be6aba9db48a0dd62e34452c7f73e38cc8cff76bb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6de156cf7dbe6569f67920445b0707c3e114f9a00c178f2a79ebc9d572e8f596"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241128/TensorFlowLiteCMetal.xcframework.zip", checksum: "a5ca91156335344da8960620391b2915569b6c982a4937f0b49e89ca60810e96"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
