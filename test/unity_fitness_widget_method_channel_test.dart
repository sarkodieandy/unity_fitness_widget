import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unity_fitness_widget/unity_fitness_widget_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelUnityFitnessWidget platform = MethodChannelUnityFitnessWidget();
  const MethodChannel channel = MethodChannel('unity_fitness_widget');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
