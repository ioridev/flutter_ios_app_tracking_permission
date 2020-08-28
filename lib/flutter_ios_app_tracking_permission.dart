import 'dart:async';

import 'package:flutter/services.dart';

class AppTrackingPermission {
  static const MethodChannel _channel =
      const MethodChannel('flutter_ios_app_tracking_permission');

  static Future<void> requestPermission() async {
    _channel.invokeMethod('getPermission');
  }
}
