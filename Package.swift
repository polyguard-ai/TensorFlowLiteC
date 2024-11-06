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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241105/TensorFlowLiteC.xcframework.zip", checksum: "2d0d2124c4d9727a30ed9183ccefe3374b1643e59110ab783491fd4499c4e125"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6cbc39279f37b98ee794d9d7f295272997d55335abff44e1ff7c366f5fb7e16d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241105/TensorFlowLiteCMetal.xcframework.zip", checksum: "f61ba9660a7b28acf1ebfd0d72d669432459aef9cdb428cf265aa8d84b9175de"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
