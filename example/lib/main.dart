import 'package:flutter/material.dart';
import 'dart:async';

import 'package:AppTracking_permission/AppTracking_permission.dart';

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

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> requestPermission() async {
    AppTrackingPermission.platformVersion;
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
              onPressed: () => requestPermission(),
              child: Text('Request Permission')),
        ),
      ),
    );
  }
}
