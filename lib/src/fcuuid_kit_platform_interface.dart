import 'package:fcuuid_kit/src/fcuuid_kit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class FcuuidKitPlatform extends PlatformInterface {
  /// Constructs a FcuuidKitPlatform.
  FcuuidKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static FcuuidKitPlatform _instance = MethodChannelFcuuidKit();

  /// The default instance of [FcuuidKitPlatform] to use.
  ///
  /// Defaults to [MethodChannelFcuuidKit].
  static FcuuidKitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FcuuidKitPlatform] when
  /// they register themselves.
  static set instance(FcuuidKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> uuid() {
    throw UnimplementedError('uuid() has not been implemented.');
  }

  Future<String> uuidForKey({
    required String key,
  }) {
    throw UnimplementedError(
        'uuidForKey({required key}) has not been implemented.');
  }

  Future<String> uuidForSession() {
    throw UnimplementedError('uuidForSession() has not been implemented.');
  }

  Future<String> uuidForInstallation() {
    throw UnimplementedError('uuidForInstallation() has not been implemented.');
  }

  Future<String> uuidForVendor() {
    throw UnimplementedError('uuidForVendor() has not been implemented.');
  }

  Future<String> uuidForDevice() {
    throw UnimplementedError('uuidForDevice() has not been implemented.');
  }

  Future<String> uuidForDeviceMigratingValue({
    required String value,
    required bool commitMigration,
  }) {
    throw UnimplementedError(
        'uuidForDeviceMigratingValue({required value, required commitMigration}) has not been implemented.');
  }

  Future<String?> uuidForDeviceMigratingValueForKey({
    required String key,
    String? service,
    String? accessGroup,
    required bool commitMigration,
  }) {
    throw UnimplementedError(
        'uuidForDeviceMigratingValue({required key, service, accessGroup, required commitMigration}) has not been implemented.');
  }

  Future<List<String>> uuidsOfUserDevices() {
    throw UnimplementedError('uuidsOfUserDevices() has not been implemented.');
  }

  Future<List<String>> uuidsOfUserDevicesExcludingCurrentDevice() {
    throw UnimplementedError(
        'uuidsOfUserDevicesExcludingCurrentDevice() has not been implemented.');
  }

  Future<bool> uuidValueIsValid({
    required String uuid,
  }) {
    throw UnimplementedError(
        'uuidValueIsValid({required uuid}) has not been implemented.');
  }
}
