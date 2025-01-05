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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250104/TensorFlowLiteC.xcframework.zip", checksum: "ae25d5dd2670199093219b15f04c31363cbb5c6bcbafbc0ba357e6b155042173"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250104/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bc31820ef663090b8ebe384d0c64b040cae0676f7ef1fe5a3d57556232158755"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250104/TensorFlowLiteCMetal.xcframework.zip", checksum: "7bf44a69620a48bf5ca18612682a2613409bccf50ff57b3f3af20b496d7f2b73"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
