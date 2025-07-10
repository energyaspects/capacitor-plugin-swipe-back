import Foundation

#if canImport(Capacitor)
import Capacitor

// Swift-only version of the Capacitor plugin bridge
@objc(CapacitorSwipeBackPluginBridge)
public class CapacitorSwipeBackPluginBridge: NSObject {
    
    @objc public static func registerPlugin() {
        // Register the plugin with Capacitor
        // This provides the same functionality as the Objective-C CAP_PLUGIN macro
        CapacitorPlugin.register(CapacitorSwipeBackPlugin.self, as: "CapacitorSwipeBackPlugin")
    }
    
    @objc public static func getMethods() -> [String: Any] {
        return [
            "enable": [
                "type": "promise"
            ],
            "disable": [
                "type": "promise"
            ]
        ]
    }
}
#endif
