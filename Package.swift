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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250219/TensorFlowLiteC.xcframework.zip", checksum: "4ca8ece978fc958088955f14580fe83a170581e52aa126793f916081ffb19e96"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "526b3697b1dc43a268cfa8f8ed4cab8dd6ee7f133da89f3cd84957d816d20b55"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250219/TensorFlowLiteCMetal.xcframework.zip", checksum: "a9589d9e067f125bad7db3b0c90f1bbd0f0d1f39199df1f7a5ab30386fb410e3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
