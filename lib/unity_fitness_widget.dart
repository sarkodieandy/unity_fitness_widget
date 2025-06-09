
import 'unity_fitness_widget_platform_interface.dart';

class UnityFitnessWidget {
  Future<String?> getPlatformVersion() {
    return UnityFitnessWidgetPlatform.instance.getPlatformVersion();
  }
}
