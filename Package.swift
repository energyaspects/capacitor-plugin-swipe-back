// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "CapacitorSwipeBackPlugin",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CapacitorSwipeBackPlugin",
            targets: ["CapacitorSwipeBackPlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", exact: "7.0.0")
    ],
    targets: [
        .target(
            name: "CapacitorSwipeBackPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm")
            ],
            path: "Sources/CapacitorSwipeBackPlugin",
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation")
            ]
        )
    ]
)
