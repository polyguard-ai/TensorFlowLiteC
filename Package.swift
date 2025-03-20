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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250319/TensorFlowLiteC.xcframework.zip", checksum: "b909d8d6f6a1af795293d669b71b20ec875ee05da58704cad573893db578d4d5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250319/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d156943172127c13524a2a28930f878d127e4972f1d7d675422337dbb95f43a0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250319/TensorFlowLiteCMetal.xcframework.zip", checksum: "a89bb953117eaf6903138269faeb99c1fcd2a4a33de1ae1b20f4ad4d40256891"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
