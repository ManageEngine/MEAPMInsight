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
            url: "https://github.com/ManageEngine/MEAPMInsight/releases/download/v1.0.0/MEAPMInsight.xcframework.zip",
            checksum: "9c3a531e589334ac0bfde160ea7e2e600841e7560809d39ab0976ac3f169e374"
        ),
    ]
)
