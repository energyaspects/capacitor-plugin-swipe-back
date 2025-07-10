# Swift Package Manager Integration Guide

This guide explains how to integrate the Capacitor Swipe Back Plugin using Swift Package Manager (SPM).

## Prerequisites

- Xcode 11.0 or later
- Swift 5.1 or later
- Capacitor 7.0 or later

## Integration Steps

### 1. Add Package Dependency

Add the plugin to your `Package.swift` file:

```swift
// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "YourApp",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "YourApp",
            targets: ["YourApp"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/energyaspects/capacitor-plugin-swipe-back.git", from: "3.0.3"),
        // Add your other dependencies here
    ],
    targets: [
        .target(
            name: "YourApp",
            dependencies: [
                "CapacitorSwipeBackPlugin"
            ]
        )
    ]
)
```

### 2. Import in Your Swift Files

```swift
import Foundation
import CapacitorSwipeBackPlugin

// The plugin will automatically be available when Capacitor is present
```

### 3. Usage in JavaScript/TypeScript

```typescript
import { CapacitorSwipeBackPlugin } from '@energyaspects/ea-capacitor-swipe-back-plugin';

// Enable swipe back gesture
await CapacitorSwipeBackPlugin.enable();

// Disable swipe back gesture
await CapacitorSwipeBackPlugin.disable();
```

## Important Notes

- The plugin uses conditional compilation (`#if canImport(Capacitor)`) to ensure it only compiles when Capacitor is available
- The original CocoaPods integration remains fully supported
- SPM integration provides the same functionality as the CocoaPods version
- The plugin automatically registers itself when Capacitor is available

## Troubleshooting

### Build Errors

If you encounter build errors, ensure that:

1. Capacitor is properly integrated in your app
2. The iOS deployment target is set to 13.0 or later
3. Swift version is 5.1 or later

### Plugin Not Found

If the plugin is not recognized by Capacitor:

1. Ensure you've added the plugin to your app's dependencies
2. Check that Capacitor is properly configured in your app
3. Verify that the plugin is imported in your Swift files

## Migration from CocoaPods

If you're migrating from CocoaPods to SPM:

1. Remove the plugin from your `Podfile`
2. Add the SPM dependency as shown above
3. Run `pod install` to update your CocoaPods setup
4. Build your project with the new SPM dependency

The plugin API remains identical, so no JavaScript/TypeScript code changes are required.
