import Flutter
import UIKit
import AdSupport
import AppTrackingTransparency

public class SwiftAppTrackingPermissionPlugin: NSObject, FlutterPlugin {
    var permissionAuthorized:String = "authorized"
     var permissionRestricted:String = "restricted"
     var permissionDenied:String = "denied"
     var permissionnotDetermined:String = "notDetermined"
     var permissionUnknown:String = "unknown"

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "AppTracking_permission", binaryMessenger: registrar.messenger())
    let instance = SwiftAppTrackingPermissionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
   // result("iOS " + UIDevice.current.systemVersion)
    if #available(iOS 14, *) {
        result( ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
            switch status {
            case .authorized:
                print("authorized \(ASIdentifierManager.shared().advertisingIdentifier)")
                result(self.permissionAuthorized)
                             case .denied:
                                 print("denied")
                             case .restricted:
                                 print("restricted")
                             case .notDetermined:
                                  print("notDetermined")
                             @unknown default:
                                 fatalError()
                             
            }
        }))
    } else {
        // Fallback on earlier versions
    }
  }
}
