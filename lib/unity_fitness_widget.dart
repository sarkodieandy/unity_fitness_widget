import 'unity_fitness_widget_platform_interface.dart';

class UnityFitnessWidget {
  static Future<String?> getPlatformVersion() {
    return UnityFitnessWidgetPlatform.instance.getPlatformVersion();
  }

  static Future<void> launch() {
    return UnityFitnessWidgetPlatform.instance.launchUnity();
  }

  static Future<void> sendXp(int xp) {
    return UnityFitnessWidgetPlatform.instance.sendXp(xp);
  }

  static Future<void> setEmotion(String emotion) {
    return UnityFitnessWidgetPlatform.instance.setEmotion(emotion);
  }

  static Future<void> setAura(bool isActive) {
    return UnityFitnessWidgetPlatform.instance.setAura(isActive);
  }

  static Future<void> setTrainingStatus(String status) {
    return UnityFitnessWidgetPlatform.instance.setTrainingStatus(status);
  }
}
