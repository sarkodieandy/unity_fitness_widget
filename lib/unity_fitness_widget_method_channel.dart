import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'unity_fitness_widget_platform_interface.dart';

/// An implementation of [UnityFitnessWidgetPlatform] that uses method channels.
class MethodChannelUnityFitnessWidget extends UnityFitnessWidgetPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('unity_fitness_widget');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
