import 'dart:io';

import 'package:flutter/services.dart';

class Fcuuid {
  const Fcuuid._();

  static const MethodChannel _channel = MethodChannel('v7lin.github.io/fcuuid_kit');

  static Future<String> uuid() async {
    assert(Platform.isIOS);
    final String? uuid = await _channel.invokeMethod<String>('uuid');
    return uuid!;
  }

  static Future<String> uuidForKey({
    required String key,
  }) async {
    assert(Platform.isIOS);
    final String? uuid = await _channel.invokeMethod<String>(
      'uuidForKey',
      <String, dynamic>{
        'key': key,
      },
    );
    return uuid!;
  }

  static Future<String> uuidForSession() async {
    assert(Platform.isIOS);
    final String? uuid = await _channel.invokeMethod<String>('uuidForSession');
    return uuid!;
  }

  static Future<String> uuidForInstallation() async {
    assert(Platform.isIOS);
    final String? uuid = await _channel.invokeMethod<String>('uuidForInstallation');
    return uuid!;
  }

  static Future<String> uuidForVendor() async {
    assert(Platform.isIOS);
    final String? uuid = await _channel.invokeMethod<String>('uuidForVendor');
    return uuid!;
  }

  static Future<String> uuidForDevice() async {
    assert(Platform.isIOS);
    final String? uuid = await _channel.invokeMethod<String>('uuidForDevice');
    return uuid!;
  }

  static Future<String> uuidForDeviceMigratingValue({
    required String value,
    required bool commitMigration,
  }) async {
    assert(Platform.isIOS);
    final String? uuid = await _channel.invokeMethod<String>(
      'uuidForDeviceMigratingValue',
      <String, dynamic>{
        'value': value,
        'commitMigration': commitMigration,
      },
    );
    return uuid!;
  }

  static Future<String?> uuidForDeviceMigratingValueForKey({
    required String key,
    String? service,
    String? accessGroup,
    required bool commitMigration,
  }) async {
    assert(Platform.isIOS);
    final String? uuid = await _channel.invokeMethod<String>(
      'uuidForDeviceMigratingValueForKey',
      <String, dynamic>{
        'key': key,
        'service': service,
        'accessGroup': accessGroup,
        'commitMigration': commitMigration,
      },
    );
    return uuid!;
  }

  static Future<List<String>> uuidsOfUserDevices() async {
    assert(Platform.isIOS);
    final List<String>? uuids = await _channel.invokeListMethod<String>('uuidsOfUserDevices');
    return uuids!;
  }

  static Future<List<String>> uuidsOfUserDevicesExcludingCurrentDevice() async {
    assert(Platform.isIOS);
    final List<String>? uuids = await _channel.invokeListMethod<String>('uuidsOfUserDevicesExcludingCurrentDevice');
    return uuids!;
  }

  static Future<bool> uuidValueIsValid({
    required String uuid,
  }) async {
    assert(Platform.isIOS);
    final bool? isValid = await _channel.invokeMethod<bool>(
      'uuidValueIsValid',
      <String, dynamic>{
        'uuid': uuid,
      },
    );
    return isValid!;
  }
}
