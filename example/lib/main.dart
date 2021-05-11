import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:fcuuid_kit/fcuuid_kit.dart';

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
    _uuid();
  }

  Future<void> _uuid() async {
    print('uuid: ${await Fcuuid.uuid()}');
    print('uuidForSession: ${await Fcuuid.uuidForSession()}');
    print('uuidForInstallation: ${await Fcuuid.uuidForInstallation()}');
    print('uuidForVendor: ${await Fcuuid.uuidForVendor()}');
    print('uuidForDevice: ${await Fcuuid.uuidForDevice()}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FCUUID'),
        ),
      ),
    );
  }
}
