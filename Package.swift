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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250418/TensorFlowLiteC.xcframework.zip", checksum: "38017c03f84f1726dcce5e4d6bd7e5eeac943326184926869a1c7837728ea930"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250418/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d34fad3ccd4991f4db2178bfcde2f72b06a40ddcd1f7d6f6856b527ae1450e06"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20250418/TensorFlowLiteCMetal.xcframework.zip", checksum: "30151e51c32c0a5799a2587c37cfef091f60d134c9518f974cd882387548f62f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
