# Quick start

- - -

## Integrate the SDK

### Add ZegoUIKitPrebuiltVideoConference as dependencies

1. Edit your project's pubspec.yaml and add local project dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  zego_uikit_prebuilt_video_conference: ^1.1.6 # Add this line
```

2. Execute the command as shown below under your project's root folder to install all dependencies

```
flutter pub get
```

### Import the SDK

Now in your Dart code, import the prebuilt SDK.

```dart
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';
```

### Using the ZegoUIKitPrebuiltVideoConference in your project

You can get `appID` and `appSign` from [ZEGOCLOUD's Admin Console](https://console.zegocloud.com/). Pick up the `userID` and `userName` for connecting to ZEGOCLOUD's service. And you should also pick up a `conferenceID` for making a new call.

<div class="mk-hint">

- `userID` and `conferenceID` can only contain numbers, letters, and underlines (_).
- Users that join the video conference with the same `conferenceID` can talk to each other.
</div>


```dart
class VideoConferencePage extends StatelessWidget {
  final String conferenceID;
  
  const VideoConferencePage({Key? key, required this.conferenceID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltVideoConference(
        appID: yourAppID,
        appSign: yourAppSign,
        userID: userID,
        userName: userName,
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
    );
  }
}
```

Now, you can make a new video conference by navigating to this `VideoConferencePage`.


## Build & Run

### 1. Config your project

#### Android

1. If your project was created with a version of flutter that is not the latest stable, you may need to manually modify compileSdkVersion in `your_project/android/app/build.gradle` to 33

![compileSdkVersion.png](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/compileSdkVersion.png)

2. Need to add app permissions, Open the file `your_project/app/src/main/AndroidManifest.xml`, add the following code:
   ```xml
   <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
   <uses-permission android:name="android.permission.RECORD_AUDIO" />
   <uses-permission android:name="android.permission.INTERNET" />
   <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
   <uses-permission android:name="android.permission.CAMERA" />
   <uses-permission android:name="android.permission.BLUETOOTH" />
   <uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
   <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
   <uses-permission android:name="android.permission.READ_PHONE_STATE" />
   <uses-permission android:name="android.permission.WAKE_LOCK" />
   ```
![/Pics/ZegoUIKit/Flutter/permission_android.png](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/permission_android.png)

#### iOS

Need add app permissions, open `your_project/ios/Runner/Info.plist`, add the following code inside the `dict` tag:

```plist
<key>NSCameraUsageDescription</key>
<string>We require camera access to connect to a video conference</string>
<key>NSMicrophoneUsageDescription</key>
<string>We require microphone access to connect to a video conference</string>
```
![/Pics/ZegoUIKit/Flutter/permission_ios.png](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/permission_ios.png)

#### Turn off some classes's confusion

To prevent the ZEGO SDK public class names from being obfuscated, please complete the following steps:

1. Create `proguard-rules.pro` file under [your_project > android > app] with content as show below:
```
-keep class **.zego.** { *; }
```

2. Add the following config code to the release part of the `your_project/android/app/build.gradle` file.
```
proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
```

![image](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/android_class_confusion.png)

### 2. Run & Debug

Now you can simply click the **Run** or **Debug** button to build and run your App on your device.
![/Pics/ZegoUIKit/Flutter/run_flutter_project.jpg](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/run_flutter_project.jpg)

## Related guide

[Custom prebuilt UI](!ZEGOUIKIT_Custom_prebuilt_UI)


## Resources

[Complete Sample Code](https://github.com/ZEGOCLOUD/zego_uikit_prebuilt_video_conference_example/tree/master/basic_call/flutter)
