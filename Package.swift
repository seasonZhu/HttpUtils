// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HttpUtils",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "HttpUtils",
            targets: ["HttpUtils"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", .upToNextMajor(from: "4.9.0")),
    ],
    targets: [
         .target(
            name: "HttpUtils",
            dependencies: ["Alamofire"],
            path: "HttpUtils")],
    swiftLanguageVersions: [.v4_2]
)
