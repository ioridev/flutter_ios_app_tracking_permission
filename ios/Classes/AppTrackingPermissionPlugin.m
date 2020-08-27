#import "AppTrackingPermissionPlugin.h"
#if __has_include(<AppTracking_permission/AppTracking_permission-Swift.h>)
#import <AppTracking_permission/AppTracking_permission-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "AppTracking_permission-Swift.h"
#endif

@implementation AppTrackingPermissionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAppTrackingPermissionPlugin registerWithRegistrar:registrar];
}
@end
