import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'unity_fitness_widget_platform_interface.dart';

/// Implementation using method channels.
class MethodChannelUnityFitnessWidget extends UnityFitnessWidgetPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('unity_fitness_widget');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }

  @override
  Future<void> launchUnity() async {
    await methodChannel.invokeMethod('launchUnity');
  }

  @override
  Future<void> sendXp(int xp) async {
    await methodChannel.invokeMethod('sendXp', {'xp': xp});
  }

  @override
  Future<void> setEmotion(String emotion) async {
    await methodChannel.invokeMethod('setEmotion', {'emotion': emotion});
  }

  @override
  Future<void> setAura(bool isActive) async {
    await methodChannel.invokeMethod('setAura', {'active': isActive});
  }

  @override
  Future<void> setTrainingStatus(String status) async {
    await methodChannel.invokeMethod('setTrainingStatus', {'status': status});
  }
}
