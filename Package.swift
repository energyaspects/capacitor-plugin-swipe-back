// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "CapacitorSwipeBackPlugin",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CapacitorSwipeBackPlugin",
            targets: ["CapacitorSwipeBackPlugin"]
        )
    ],
    dependencies: [
        // Note: Capacitor framework must be added as a dependency in the consuming app
        // This package provides the source code that can be compiled alongside Capacitor
    ],
    targets: [
        .target(
            name: "CapacitorSwipeBackPlugin",
            dependencies: [],
            path: "Sources/CapacitorSwipeBackPlugin",
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation")
            ]
        )
    ]
)
