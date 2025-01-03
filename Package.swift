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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250102/TensorFlowLiteC.xcframework.zip", checksum: "b7508da4c325522557348846b270bb7fdf84c65339a730c126f3caabd2128c5d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6b4f96e11e61351dd9581693efe9eaa2ba5dede63b17c48fac00c094b0a934c9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250102/TensorFlowLiteCMetal.xcframework.zip", checksum: "7faa3971d80bf61b638b9259854d2943eded1fa13520fd40122b8502a45bf45e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
