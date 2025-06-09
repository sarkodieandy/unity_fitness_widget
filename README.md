# How It Works

The unity_fitness_widget plugin provides a bridge between your Flutter app and a Unity-based fitness experience using Flutter’s MethodChannel. It allows you to:

Launch the Unity engine or activity from Flutter.

Send data such as XP points, emotion states, aura toggles, and training status updates from Flutter to Unity in real-time.

The communication happens via platform-specific native code (Android/iOS), where Flutter sends method calls that the native Unity integration listens for and acts upon.

Integration Steps
Add the Plugin

Add the plugin dependency to your pubspec.yaml:

yaml
Copy
Edit
dependencies:
  unity_fitness_widget:
    git:
      url: <https://github.com/sarkodieandy/unity_fitness_widget.git>

Run flutter pub get to fetch the package.

Use the Plugin

Import and call the plugin methods from your Flutter app:

dart
Copy
Edit
import 'package:unity_fitness_widget/unity_fitness_widget.dart';

final unity = UnityFitnessWidget();

void startUnityExperience() async {
  await unity.launchUnity();
  await unity.sendXp(50);
  await unity.setEmotion("motivated");
  await unity.setAura(true);
  await unity.setTrainingStatus("in_progress");
}
Setup Unity Side

Implement the corresponding native code inside your Unity Android/iOS project to listen for these method calls and update the Unity scene accordingly.

Run Your App

Now your Flutter app can seamlessly control and communicate with Unity, delivering a rich, interactive fitness experience.
