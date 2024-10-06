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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241005/TensorFlowLiteC.xcframework.zip", checksum: "d2d24b36aab326f2fddece924e304df568da8668cedc5902ea1ec792636395d9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241005/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a6551e96a4a319d9e00b57c66e33f679ce66ca7cd48ca6f866ab444a030d6648"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241005/TensorFlowLiteCMetal.xcframework.zip", checksum: "b040c9c565c9b221f46c1cd1766403752008204d32511d5ba955b5b3a6ca5285"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
