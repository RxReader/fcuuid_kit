import 'dart:io';

import 'package:fcuuid_kit/src/fcuuid_kit_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// An implementation of [FcuuidKitPlatform] that uses method channels.
class MethodChannelFcuuidKit extends FcuuidKitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final MethodChannel methodChannel =
      const MethodChannel('v7lin.github.io/fcuuid_kit');

  @override
  Future<String> uuid() async {
    assert(Platform.isIOS);
    final String? uuid = await methodChannel.invokeMethod<String>('uuid');
    return uuid!;
  }

  @override
  Future<String> uuidForKey({
    required String key,
  }) async {
    assert(Platform.isIOS);
    final String? uuid = await methodChannel.invokeMethod<String>(
      'uuidForKey',
      <String, dynamic>{
        'key': key,
      },
    );
    return uuid!;
  }

  @override
  Future<String> uuidForSession() async {
    assert(Platform.isIOS);
    final String? uuid =
        await methodChannel.invokeMethod<String>('uuidForSession');
    return uuid!;
  }

  @override
  Future<String> uuidForInstallation() async {
    assert(Platform.isIOS);
    final String? uuid =
        await methodChannel.invokeMethod<String>('uuidForInstallation');
    return uuid!;
  }

  @override
  Future<String> uuidForVendor() async {
    assert(Platform.isIOS);
    final String? uuid =
        await methodChannel.invokeMethod<String>('uuidForVendor');
    return uuid!;
  }

  @override
  Future<String> uuidForDevice() async {
    assert(Platform.isIOS);
    final String? uuid =
        await methodChannel.invokeMethod<String>('uuidForDevice');
    return uuid!;
  }

  @override
  Future<String> uuidForDeviceMigratingValue({
    required String value,
    required bool commitMigration,
  }) async {
    assert(Platform.isIOS);
    final String? uuid = await methodChannel.invokeMethod<String>(
      'uuidForDeviceMigratingValue',
      <String, dynamic>{
        'value': value,
        'commitMigration': commitMigration,
      },
    );
    return uuid!;
  }

  @override
  Future<String?> uuidForDeviceMigratingValueForKey({
    required String key,
    String? service,
    String? accessGroup,
    required bool commitMigration,
  }) async {
    assert(Platform.isIOS);
    final String? uuid = await methodChannel.invokeMethod<String>(
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

  @override
  Future<List<String>> uuidsOfUserDevices() async {
    assert(Platform.isIOS);
    final List<String>? uuids =
        await methodChannel.invokeListMethod<String>('uuidsOfUserDevices');
    return uuids!;
  }

  @override
  Future<List<String>> uuidsOfUserDevicesExcludingCurrentDevice() async {
    assert(Platform.isIOS);
    final List<String>? uuids = await methodChannel
        .invokeListMethod<String>('uuidsOfUserDevicesExcludingCurrentDevice');
    return uuids!;
  }

  @override
  Future<bool> uuidValueIsValid({
    required String uuid,
  }) async {
    assert(Platform.isIOS);
    final bool? isValid = await methodChannel.invokeMethod<bool>(
      'uuidValueIsValid',
      <String, dynamic>{
        'uuid': uuid,
      },
    );
    return isValid!;
  }
}
