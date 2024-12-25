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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241224/TensorFlowLiteC.xcframework.zip", checksum: "cf9c0ee93d21d8b89d08a4479b823ea47455602db3ef60df1d802c38b86cb306"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "70017ac3c6de9965f02e8083f9b73e88fea63a086afa3ee52ddfa6bd8a342d51"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241224/TensorFlowLiteCMetal.xcframework.zip", checksum: "db9061b800340c5f7043423a7a17dcdf2a3cbea1ff27d911c32147293e0d3fe7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
