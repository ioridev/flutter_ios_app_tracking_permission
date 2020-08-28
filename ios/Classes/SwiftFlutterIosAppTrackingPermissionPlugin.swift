import Flutter
import UIKit
import AdSupport
import AppTrackingTransparency

public class SwiftFlutterIosAppTrackingPermissionPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_ios_app_tracking_permission", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterIosAppTrackingPermissionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

   public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if #available(iOS 14, *) {
         ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
            switch status {
            case .authorized:
                print("authorized \(ASIdentifierManager.shared().advertisingIdentifier)")
                             case .denied:
                                 print("denied")
                             case .restricted:
                                 print("restricted")
                             case .notDetermined:
                                  print("notDetermined")
                             @unknown default:
                                 fatalError()
                             
            }
        })
    } else {
        // Fallback on earlier versions
    }
  }
}
