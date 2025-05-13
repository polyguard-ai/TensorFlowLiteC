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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250512/TensorFlowLiteC.xcframework.zip", checksum: "631213b7b2900b6fcbdad4957c2256655b380fefda189cc7ce9c5e09c76f63c3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250512/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5a09b2fecc48461101aa4fc527679e976a48cb13aece511f75f36325fae217e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250512/TensorFlowLiteCMetal.xcframework.zip", checksum: "3a47c518aff8d386314d4a3c3e30e145703496f284feab20373baf00a2d712fc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
