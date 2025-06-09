import 'package:flutter_test/flutter_test.dart';
import 'package:unity_fitness_widget/unity_fitness_widget.dart';
import 'package:unity_fitness_widget/unity_fitness_widget_platform_interface.dart';
import 'package:unity_fitness_widget/unity_fitness_widget_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUnityFitnessWidgetPlatform
    with MockPlatformInterfaceMixin
    implements UnityFitnessWidgetPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final UnityFitnessWidgetPlatform initialPlatform = UnityFitnessWidgetPlatform.instance;

  test('$MethodChannelUnityFitnessWidget is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUnityFitnessWidget>());
  });

  test('getPlatformVersion', () async {
    UnityFitnessWidget unityFitnessWidgetPlugin = UnityFitnessWidget();
    MockUnityFitnessWidgetPlatform fakePlatform = MockUnityFitnessWidgetPlatform();
    UnityFitnessWidgetPlatform.instance = fakePlatform;

    expect(await unityFitnessWidgetPlugin.getPlatformVersion(), '42');
  });
}
