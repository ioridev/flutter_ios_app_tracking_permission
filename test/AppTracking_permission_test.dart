import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:AppTracking_permission/AppTracking_permission.dart';

void main() {
  const MethodChannel channel = MethodChannel('AppTracking_permission');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AppTrackingPermission.platformVersion, '42');
  });
}
