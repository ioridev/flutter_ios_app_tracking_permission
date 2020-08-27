
import 'dart:async';

import 'package:flutter/services.dart';

class AppTrackingPermission {
  static const MethodChannel _channel =
      const MethodChannel('AppTracking_permission');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
