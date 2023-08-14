// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommandLineSwiftToolUsesCxx",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "Fibonacci", targets: ["Fibonacci"]),
        .executable(name: "swiftCLITool", targets: ["swiftCLITool"])
    ],
    targets: [
        .target(name: "Fibonacci"),
        .executableTarget(
            name: "swiftCLITool",
            dependencies: ["Fibonacci"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .testTarget(
            name: "FibonacciTests",
            dependencies: ["Fibonacci"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        
        .target(
            name: "ObjFibonacci",
            dependencies: ["Fibonacci"]
        ),
        .testTarget(
            name: "ObjcTests",
            dependencies: ["ObjFibonacci"]
        ),
    ]
)
