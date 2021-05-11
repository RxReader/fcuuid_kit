import 'dart:async';
import 'package:flutter/material.dart';

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
    print('uuidForKey: ${await Fcuuid.uuidForKey(key: 'abc')}');
    print('uuidForSession: ${await Fcuuid.uuidForSession()}');
    print('uuidForInstallation: ${await Fcuuid.uuidForInstallation()}');
    print('uuidForVendor: ${await Fcuuid.uuidForVendor()}');
    print('uuidForDevice: ${await Fcuuid.uuidForDevice()}');
    print(
        'uuidForDeviceMigratingValue: ${await Fcuuid.uuidForDeviceMigratingValue(value: await Fcuuid.uuid(), commitMigration: true)}');
    print('uuidForDevice: ${await Fcuuid.uuidForDevice()}');
    // print('uuidForDeviceMigratingValueForKey: ${await Fcuuid.uuidForDeviceMigratingValueForKey(key: 'abc', commitMigration: true)}'); // 错误示例（会崩溃），不知正确用法
    // print('uuidForDevice: ${await Fcuuid.uuidForDevice()}');
    print('uuidsOfUserDevices: ${await Fcuuid.uuidsOfUserDevices()}');
    print(
        'uuidsOfUserDevicesExcludingCurrentDevice: ${await Fcuuid.uuidsOfUserDevicesExcludingCurrentDevice()}');
    print(
        'uuidValueIsValid: ${await Fcuuid.uuidValueIsValid(uuid: await Fcuuid.uuidForDevice())}');
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
