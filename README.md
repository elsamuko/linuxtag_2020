# Linuxtag 2020

## Prerequisites

### Flutter & Dart
    sudo snap install android-studio --classic
    sudo snap install flutter --classic
Add `~/snap/flutter/common/flutter/bin/cache/dart-sdk/bin` to path for dart.

### Android Studio & Android SDK
https://flutter.dev/docs/get-started/install/linux
* Tools → SDK Manager → Android 10.0 (29)
* Tools → AVD Manager → Create Virtual Device
* File → Settings → Plugins → Flutter
* File → Settings → Plugins → Dart

## Dart
* dart scripting
* list, maps, files, print
* async, await
* http
* json

## flutter command line
* `flutter doctor`
* `flutter create`
* pubspec.yaml → `flutter pub get`

## emulator
* `flutter emulators`
* `flutter emulators --create`
* `flutter emulators --launch flutter_emulator`

## App
* MaterialApp
  * Theme
  * Hot Reloading
* Widgets → StatefulWidget
  * setState
* Navigator with parameters

## Testing
* `flutter test`
* test driver → `flutter drive --target=test_driver/screenshot.dart`

## Debugging
