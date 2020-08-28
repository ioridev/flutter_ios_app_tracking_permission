#import "FlutterIosAppTrackingPermissionPlugin.h"
#if __has_include(<flutter_ios_app_tracking_permission/flutter_ios_app_tracking_permission-Swift.h>)
#import <flutter_ios_app_tracking_permission/flutter_ios_app_tracking_permission-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_ios_app_tracking_permission-Swift.h"
#endif

@implementation FlutterIosAppTrackingPermissionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterIosAppTrackingPermissionPlugin registerWithRegistrar:registrar];
}
@end
