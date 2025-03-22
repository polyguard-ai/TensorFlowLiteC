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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250321/TensorFlowLiteC.xcframework.zip", checksum: "069b13925808bfdc40c7f1bc28f9458bc46ca6428b0ced26cfc54e54a9ac4d69"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250321/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b624af9ee469c8d0dca44b232ef122f3f3fc8ccbd4350a9f36e51db1f661211f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250321/TensorFlowLiteCMetal.xcframework.zip", checksum: "1689ba3826eeedc21885b2d4b9e072dee31414d4571a3e5d8d45818ff1675e09"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
