import 'package:fcuuid_kit/src/fcuuid.dart';
import 'package:fcuuid_kit/src/fcuuid_kit_method_channel.dart';
import 'package:fcuuid_kit/src/fcuuid_kit_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFcuuidKitPlatform
    with MockPlatformInterfaceMixin
    implements FcuuidKitPlatform {
  @override
  Future<String> uuid() {
    return Future<String>.value('123456789');
  }

  @override
  Future<String> uuidForKey({
    required String key,
  }) {
    throw UnimplementedError(
        'uuidForKey({required key}) has not been implemented.');
  }

  @override
  Future<String> uuidForSession() {
    throw UnimplementedError('uuidForSession() has not been implemented.');
  }

  @override
  Future<String> uuidForInstallation() {
    throw UnimplementedError('uuidForInstallation() has not been implemented.');
  }

  @override
  Future<String> uuidForVendor() {
    throw UnimplementedError('uuidForVendor() has not been implemented.');
  }

  @override
  Future<String> uuidForDevice() {
    throw UnimplementedError('uuidForDevice() has not been implemented.');
  }

  @override
  Future<String> uuidForDeviceMigratingValue({
    required String value,
    required bool commitMigration,
  }) {
    throw UnimplementedError(
        'uuidForDeviceMigratingValue({required value, required commitMigration}) has not been implemented.');
  }

  @override
  Future<String?> uuidForDeviceMigratingValueForKey({
    required String key,
    String? service,
    String? accessGroup,
    required bool commitMigration,
  }) {
    throw UnimplementedError(
        'uuidForDeviceMigratingValue({required key, service, accessGroup, required commitMigration}) has not been implemented.');
  }

  @override
  Future<List<String>> uuidsOfUserDevices() {
    throw UnimplementedError('uuidsOfUserDevices() has not been implemented.');
  }

  @override
  Future<List<String>> uuidsOfUserDevicesExcludingCurrentDevice() {
    throw UnimplementedError(
        'uuidsOfUserDevicesExcludingCurrentDevice() has not been implemented.');
  }

  @override
  Future<bool> uuidValueIsValid({
    required String uuid,
  }) {
    throw UnimplementedError(
        'uuidValueIsValid({required uuid}) has not been implemented.');
  }
}

void main() {
  final FcuuidKitPlatform initialPlatform = FcuuidKitPlatform.instance;

  test('$MethodChannelFcuuidKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFcuuidKit>());
  });

  test('uuid', () async {
    final MockFcuuidKitPlatform fakePlatform = MockFcuuidKitPlatform();
    FcuuidKitPlatform.instance = fakePlatform;

    expect(await Fcuuid.instance.uuid(), '123456789');
  });
}
