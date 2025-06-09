import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'unity_fitness_widget_method_channel.dart';

abstract class UnityFitnessWidgetPlatform extends PlatformInterface {
  UnityFitnessWidgetPlatform() : super(token: _token);

  static final Object _token = Object();

  static UnityFitnessWidgetPlatform _instance =
      MethodChannelUnityFitnessWidget();

  /// Default instance.
  static UnityFitnessWidgetPlatform get instance => _instance;

  /// Set platform-specific implementation.
  static set instance(UnityFitnessWidgetPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Get platform version.
  Future<String?> getPlatformVersion() {
    throw UnimplementedError('getPlatformVersion() has not been implemented.');
  }

  /// Additional methods you expect the platform interface to define:
  Future<void> launchUnity() {
    throw UnimplementedError('launchUnity() has not been implemented.');
  }

  Future<void> sendXp(int xp) {
    throw UnimplementedError('sendXp() has not been implemented.');
  }

  Future<void> setEmotion(String emotion) {
    throw UnimplementedError('setEmotion() has not been implemented.');
  }

  Future<void> setAura(bool isActive) {
    throw UnimplementedError('setAura() has not been implemented.');
  }

  Future<void> setTrainingStatus(String status) {
    throw UnimplementedError('setTrainingStatus() has not been implemented.');
  }
}
