import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class Fcuuid {
  const Fcuuid._();

  static const MethodChannel _channel = MethodChannel('v7lin.github.io/fcuuid_kit');

  static Future<String> uuid() {
    assert(Platform.isIOS);
    return _channel.invokeMethod<String>('uuid');
  }

  static Future<String> uuidForKey({
    @required String key,
  }) {
    assert(Platform.isIOS);
    return _channel.invokeMethod<String>('uuidForKey', <String, dynamic>{
      'key': key,
    });
  }

  static Future<String> uuidForSession() {
    assert(Platform.isIOS);
    return _channel.invokeMethod<String>('uuidForSession');
  }

  static Future<String> uuidForInstallation() {
    assert(Platform.isIOS);
    return _channel.invokeMethod<String>('uuidForInstallation');
  }

  static Future<String> uuidForVendor() {
    assert(Platform.isIOS);
    return _channel.invokeMethod<String>('uuidForVendor');
  }

  static Future<String> uuidForDevice() {
    assert(Platform.isIOS);
    return _channel.invokeMethod<String>('uuidForDevice');
  }

  static Future<String> uuidForDeviceMigratingValue({
    @required String value,
    @required bool commitMigration,
  }) {
    assert(Platform.isIOS);
    return _channel.invokeMethod<String>('uuidForDeviceMigratingValue', <String, dynamic>{
      'value': value,
      'commitMigration': commitMigration,
    });
  }

  static Future<String> uuidForDeviceMigratingValueForKey({
    @required String key,
    String service,
    String accessGroup,
    @required bool commitMigration,
  }) {
    assert(Platform.isIOS);
    return _channel.invokeMethod<String>('uuidForDeviceMigratingValueForKey', <String, dynamic>{
      'key': key,
      'service': service,
      'accessGroup': accessGroup,
      'commitMigration': commitMigration,
    });
  }

  static Future<List<String>> uuidsOfUserDevices() {
    assert(Platform.isIOS);
    return _channel.invokeListMethod<String>('uuidsOfUserDevices');
  }

  static Future<List<String>> uuidsOfUserDevicesExcludingCurrentDevice() {
    assert(Platform.isIOS);
    return _channel.invokeListMethod<String>('uuidsOfUserDevicesExcludingCurrentDevice');
  }

  static Future<bool> uuidValueIsValid({
    @required String uuid,
  }) {
    assert(Platform.isIOS);
    return _channel.invokeMethod<bool>('uuidForKey', <String, dynamic>{
      'uuid': uuid,
    });
  }
}
