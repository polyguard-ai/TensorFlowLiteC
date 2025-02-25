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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250224/TensorFlowLiteC.xcframework.zip", checksum: "b443ba13e6171aa0766ee60fc491a2cfefed117ad62b717c5d5fe10c325358ee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b24bb5d19b3f8fc0df5242fe83b514d8764492f92999db64d9d8f9d16245a714"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250224/TensorFlowLiteCMetal.xcframework.zip", checksum: "8dd30e412c7eea2de137a41716b606bddbae00d41340ad1729d520661ec48bdd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
