import Foundation

#if canImport(Capacitor)
import Capacitor

@objc(CapacitorSwipeBackPlugin)
public class CapacitorSwipeBackPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "CapacitorSwipeBackPlugin"
    public let jsName = "CapacitorSwipeBackPlugin"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "enable", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "disable", returnType: CAPPluginReturnPromise)
    ]
    
    @objc func enable(_ call: CAPPluginCall) {
        webView?.allowsBackForwardNavigationGestures = true
        call.resolve([
            "status": "enable"
        ])
    }
    
    @objc func disable(_ call: CAPPluginCall) {
        webView?.allowsBackForwardNavigationGestures = false
        call.resolve([
            "status": "disable"
        ])
    }
}
#endif
