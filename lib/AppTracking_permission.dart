import 'dart:async';

import 'package:flutter/services.dart';

class AppTrackingPermission {
  static const MethodChannel _channel =
      const MethodChannel('AppTracking_permission');

  static Future<void> requestPermission() async {
    _channel.invokeMethod('getPermission');
  }
}
