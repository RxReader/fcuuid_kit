import 'package:fcuuid_kit/fcuuid_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _uuid();
  }

  Future<void> _uuid() async {
    if (kDebugMode) {
      print('uuid: ${await Fcuuid.instance.uuid()}');
      print('uuidForKey: ${await Fcuuid.instance.uuidForKey(key: 'abc')}');
      print('uuidForSession: ${await Fcuuid.instance.uuidForSession()}');
      print(
          'uuidForInstallation: ${await Fcuuid.instance.uuidForInstallation()}');
      print('uuidForVendor: ${await Fcuuid.instance.uuidForVendor()}');
      print('uuidForDevice: ${await Fcuuid.instance.uuidForDevice()}');
      print(
          'uuidForDeviceMigratingValue: ${await Fcuuid.instance.uuidForDeviceMigratingValue(value: await Fcuuid.instance.uuid(), commitMigration: true)}');
      print('uuidForDevice: ${await Fcuuid.instance.uuidForDevice()}');
      // print('uuidForDeviceMigratingValueForKey: ${await Fcuuid.uuidForDeviceMigratingValueForKey(key: 'abc', commitMigration: true)}'); // 错误示例（会崩溃），不知正确用法
      // print('uuidForDevice: ${await Fcuuid.uuidForDevice()}');
      print(
          'uuidsOfUserDevices: ${await Fcuuid.instance.uuidsOfUserDevices()}');
      print(
          'uuidsOfUserDevicesExcludingCurrentDevice: ${await Fcuuid.instance.uuidsOfUserDevicesExcludingCurrentDevice()}');
      print(
          'uuidValueIsValid: ${await Fcuuid.instance.uuidValueIsValid(uuid: await Fcuuid.instance.uuidForDevice())}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FCUUID'),
        ),
      ),
    );
  }
}
