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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/2.17.0/TensorFlowLiteC.xcframework.zip", checksum: "5187c9a4529f994e26c91f499b0bf616db675033840ab015ae9f54be1c18f778"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/2.17.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3a04396caf7848d0c9bc89d528d06f17b4dad68037435c9ad246c2ac505f73fb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/2.17.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "53ccd4aff7ebc134f277a4a4ea9cd03b52eca3111140389671b13ecf8e307763"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
