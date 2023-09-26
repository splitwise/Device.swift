// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Device.swift",
    products: [
        .library(
            name: "Device.swift",
            targets: ["Device.swift"]),
    ],
    targets: [
        .target(
            name: "Device.swift"),
    ]
)
