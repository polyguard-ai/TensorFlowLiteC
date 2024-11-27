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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241126/TensorFlowLiteC.xcframework.zip", checksum: "280a6ae021d166a4d4bd88534f7232ae9979f8dea8ceed3fac769a1f4e437f2b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "43a13f10d150869e265937b6742806e257c246d10d557fb20c3987dfadaa04eb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/polyguard-ai/TensorFlowLiteC/releases/download/0.0.20241126/TensorFlowLiteCMetal.xcframework.zip", checksum: "fcd08160738b9ddab04030bdbb19241f1e2e825714536fbf8da0daf6bbf10e54"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
