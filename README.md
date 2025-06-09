# unity_fitness_widget

A Flutter plugin to display a Unity 3D avatar in your fitness app.

## Unity Integration Instructions

1. In Unity:
    - File > Build Settings > Android
    - Enable "Export as Android Library"
    - Export to: `unity_fitness_widget/android/unityLibrary/`

2. Unity Scene:
    - Add a `GameObject` named `GameController`
    - Attach a script with the following methods:
        - `public void SetXp(string xp)`
        - `public void SetEmotion(string emotion)`
        - `public void SetAura(string active)`
        - `public void SetTrainingStatus(string status)`

3. Flutter Usage:
```dart
UnityFitnessWidget.launch();
UnityFitnessWidget.sendXp(1200);
UnityFitnessWidget.setEmotion("smile");
UnityFitnessWidget.setAura(true);
UnityFitnessWidget.setTrainingStatus("working_out");
