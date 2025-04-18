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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250417/TensorFlowLiteC.xcframework.zip", checksum: "f65c28b53602b261c270366d8bd5f2973fb5c467df7c0144b991048f0e552e41"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250417/TensorFlowLiteCCoreML.xcframework.zip", checksum: "db8a4533d8c7de4f97ad94d7c0ba9a83baf19d0b39e5bcaa537c49a88c9908dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250417/TensorFlowLiteCMetal.xcframework.zip", checksum: "6afd4d9de539edf00284433dbbf5a27033c349dbb3d7331a30b0fee1828f43b3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
