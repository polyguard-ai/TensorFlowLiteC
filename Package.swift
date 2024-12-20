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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241219/TensorFlowLiteC.xcframework.zip", checksum: "ea28375fa6daa8326446005dc93dc264a95db4eeb6271fe3012733d5c6d92053"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6a3fb8ddd4c99502abb06958fb4d0e05aba0083f9fb44223036b831fb967d550"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241219/TensorFlowLiteCMetal.xcframework.zip", checksum: "c9f7876106a14e472c7ce35c0509136434b3b2bc24f6373f9698e2317f5a0b82"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
