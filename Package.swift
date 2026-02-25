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
            url: "https://github.com/ManageEngine/MEAPMInsight/releases/download/v1.0.1/MEAPMInsight.xcframework.zip",
            checksum: "17a6f8690b682627639a42391912afb70e1d65fb6b4e0a417f26035403f2ed17"
        ),
    ]
)
