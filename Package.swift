// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "EnergyaspectsEaCapacitorSwipeBackPlugin",
    platforms: [
        .iOS("14.0")
    ],
    products: [
        .library(
            name: "EnergyaspectsEaCapacitorSwipeBackPlugin",
            targets: ["CapacitorSwipeBackPlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", .exact("7.0.0"))
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
