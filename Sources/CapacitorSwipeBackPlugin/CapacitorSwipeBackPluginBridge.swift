import Foundation

#if canImport(Capacitor)
import Capacitor

// Swift-only version of the Capacitor plugin bridge
@objc(CapacitorSwipeBackPluginBridge)
public class CapacitorSwipeBackPluginBridge: NSObject {
    
    // Registration is now automatic via CAPBridgedPlugin; no manual registration needed.
    
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