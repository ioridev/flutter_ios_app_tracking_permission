import 'package:flutter/material.dart';

import 'package:flutter_ios_app_tracking_permission/flutter_ios_app_tracking_permission.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FlatButton(
              onPressed: () => AppTrackingPermission.requestPermission(),
              child: Text('Request Permission')),
        ),
      ),
    );
  }
}
