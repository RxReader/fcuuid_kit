import 'package:fcuuid_kit/src/fcuuid_kit_method_channel.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final MethodChannelFcuuidKit platform = MethodChannelFcuuidKit();
  const MethodChannel channel = MethodChannel('v7lin.github.io/fcuuid_kit');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      switch (methodCall.method) {
        case 'uuid':
          return '123456789';
      }
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('uuid', () async {
    expect(await platform.uuid(), '123456789');
  });
}
