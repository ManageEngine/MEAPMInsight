// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MEAPMInsight",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "MEAPMInsight",
            targets: ["MEAPMInsight"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MEAPMInsight",
            url: "https://github.com/ManageEngine/MEAPMInsight/releases/download/v1.0.2/MEAPMInsight.xcframework.zip",
            checksum: "969bf616d94bbee2aa54b0e25ff62a2f082e2b0e2b5a00d81b25b05bf61a1924"
        ),
    ]
)
