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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250128/TensorFlowLiteC.xcframework.zip", checksum: "a353a9ebe6ea0bff1afede9206094d68d8cae5147e964113c504291aa9ff1522"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "31d22bcb35b163ae1fb3284ef41f7e13edf26495293b2a5a1ab182ef2f8b3c5c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250128/TensorFlowLiteCMetal.xcframework.zip", checksum: "fb50e715028f55fc610c20dbbc4bf0b448fcb74006dc9b1abca496d8e14a7d85"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
