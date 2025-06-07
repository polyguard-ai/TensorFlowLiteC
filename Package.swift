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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250606/TensorFlowLiteC.xcframework.zip", checksum: "7e4fa6571f5268976fb1bcc9585db4c7db1dd8117468e622cf473b38f5a93633"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250606/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ef31be03c7df583866b9813d9202bacae0443191b453a9fe5be4cfe118ce1a04"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250606/TensorFlowLiteCMetal.xcframework.zip", checksum: "68634f3816776bac514cae885f8dc629de7013aa130b7d891480c19875035ed9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
