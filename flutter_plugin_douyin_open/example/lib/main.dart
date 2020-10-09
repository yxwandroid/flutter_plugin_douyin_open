import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_plugin_douyin_open/flutter_plugin_douyin_open.dart';

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
        body: Column(
          children: [
            Center(
              child: FlatButton(
                onPressed: () async {
                  await FlutterPluginDouyinOpen.platformVersion;
                },
                child: Text("步骤1 获取Client_key"),
              ),
            ),
            Center(
              child: FlatButton(
                onPressed: () async {
                },
                child: Text("步骤2 获取access_token"),
              ),
            ),
            Center(
              child: FlatButton(
                onPressed: () async {
                  await FlutterPluginDouyinOpen.platformVersion;
                },
                child: Text("步骤3 获取用户信息"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
