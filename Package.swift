// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "NiceOutput",
  platforms: [
    .macOS("13.0"), .iOS("16.0"), .watchOS("9.0"), .tvOS("16.0"),
  ],
  products: [.library(name: "Dummy", targets: ["Dummy"])],
  dependencies: [
      .package(url: "https://github.com/sajjon/swift-testing.git", branch: "progress_of_test_in_cli"),
  ],
  targets: [
    .target(name: "Dummy"),
    .testTarget(
      name: "Tests",
      dependencies: [
        "Dummy",
        .product(name: "Testing", package: "swift-testing"),
      ]),
  ]
)
