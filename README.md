# capacitor-swipe-back

Capacitor swipe back plugin. For Capacitor v3, v4 (0.0.3), v5 (1.0.0), v6 (2.0.0) and v7 (3.0.0). For v2 use original plugin: https://github.com/diiiary/capacitor-plugin-ios-swipe-back

## Changelog

### 3.0.5
- Added support for auto-registration with Swift Package Manager (SPM) via the CAPBridgedPlugin protocol
- Plugin can now be used without manual registration in PluginRegistration.swift when using SPM

## Install

### Swift Package Manager

To add the plugin using Swift Package Manager, add the following line to your dependencies in `Package.swift`:

```swift
.package(url: "https://github.com/energyaspects/capacitor-plugin-swipe-back.git", from: "3.0.3")
```

Then add the package as a dependency:

```swift
CapacitorSwipeBackPlugin
```

**Note**: When using SPM, the Capacitor framework must be available in your app's dependencies. This plugin provides Swift source files that will be compiled alongside your Capacitor app.

#### For iOS Apps with SPM

1. Add the plugin to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/energyaspects/capacitor-plugin-swipe-back.git", from: "3.0.3")
]
```

2. Add it to your target dependencies:

```swift
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            "CapacitorSwipeBackPlugin"
        ]
    )
]
```

3. The plugin will automatically be available when Capacitor is present in your app.

### npm

```bash
npm install ea-capacitor-swipe-back-plugin
npx cap sync
```

## API

<docgen-index>

* [`enable()`](#enable)
* [`disable()`](#disable)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### enable()

```typescript
enable() => Promise<{ status: 'enable'; }>
```

**Returns:** <code>Promise&lt;{ status: 'enable'; }&gt;</code>

--------------------


### disable()

```typescript
disable() => Promise<{ status: 'disable'; }>
```

**Returns:** <code>Promise&lt;{ status: 'disable'; }&gt;</code>

--------------------

</docgen-api>
