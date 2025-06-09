import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'unity_fitness_widget_method_channel.dart';

abstract class UnityFitnessWidgetPlatform extends PlatformInterface {
  /// Constructs a UnityFitnessWidgetPlatform.
  UnityFitnessWidgetPlatform() : super(token: _token);

  static final Object _token = Object();

  static UnityFitnessWidgetPlatform _instance = MethodChannelUnityFitnessWidget();

  /// The default instance of [UnityFitnessWidgetPlatform] to use.
  ///
  /// Defaults to [MethodChannelUnityFitnessWidget].
  static UnityFitnessWidgetPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UnityFitnessWidgetPlatform] when
  /// they register themselves.
  static set instance(UnityFitnessWidgetPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
