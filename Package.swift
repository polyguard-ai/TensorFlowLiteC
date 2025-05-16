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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250515/TensorFlowLiteC.xcframework.zip", checksum: "504b7728508ebeb6e5527ecd321ee2e4ca91c78eec8d22f7379cc8736a1969db"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250515/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e2789af87ac53ed219169269bcb155c14b272496b1ff79ad7df549cae72791b5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250515/TensorFlowLiteCMetal.xcframework.zip", checksum: "4253216ee202e1817ba1b314f571bc78bbdd03ce9193f749e0b60cb4775db251"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
