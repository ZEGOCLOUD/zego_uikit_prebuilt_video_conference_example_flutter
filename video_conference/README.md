# Quick start

- - -


## Integrate the SDK

### Add ZegoUIKitPrebuiltVideoConference as dependencies

Run the following code in your project root directory: 

```dart
flutter pub get zego_uikit_prebuilt_video_conference
```

This will add a line like this to your project's `pubspec.yaml` file (and Flutter will automatic run an implicit `flutter pub get`):

```dart
dependencies:
  zego_uikit_prebuilt_video_conference: ^1.0.0 # Add this line.
```

### Import the SDK

Now in your Dart code, import the prebuilt Video Conference Kit SDK.

```dart
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference';
```

### Using the ZegoUIKitPrebuiltVideoConference in your project

- Go to [ZEGOCLOUD Admin Console\|_blank](https://console.zegocloud.com/), get the `appID` and `appSign` of your project.
- Specify the `userID` and `userName` for connecting the Video Conference Kit service. 
- Create a `conferenceID` that represents the video conference you want to start. 

- `userID` and `conferenceID` can only contain numbers, letters, and underlines (_). 
- Using the same `conferenceID` will enter the same video conference.

```dart
class VideoConferencePage extends StatelessWidget {
  final String conferenceID;

  const VideoConferencePage({
    Key? key,
    required this.conferenceID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID: /*input your AppID*/,
        appSign: /*input your AppSign*/,
        userID: 'user_id',
        userName: 'user_name',
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),
    );
  }
}
```

Now, you can start a video conference by navigating to this `VideoConferencePage `.


## Configure your project


- Android:
1. If your project is created with an old (not the latest) version of Flutter, you will need to open the `your_project/android/app/build.gradle` file, and modify the `compileSdkVersion` to 33.


![compileSdkVersion.png](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/compileSdkVersion.png)

2. Add app permissions.
Open the file `your_project/app/src/main/AndroidManifest.xml`, and add the following code:
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
![permission_android.png](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/permission_android.png)

- iOS: 

To add permissions, open `your_project/ios/Runner/Info.plist`, and add the following code to the `dict` part:

```plist
<key>NSCameraUsageDescription</key>
<string>Access permission to camera is required.</string>
<key>NSMicrophoneUsageDescription</key>
<string>Access permission to microphone is required.</string>
```
![permission_ios.png](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/permission_ios.png)


## Run & Test

Now you have finished all the steps!

You can simply click the **Run** or **Debug** to run and test your App on your device.

![run_flutter_project.jpg](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/run_flutter_project.jpg)

## Related guide

[Custom prebuilt UI](!VideoConferenceKit_Custom_prebuiltUI)


## Resources

<div class="md-grid-list-box">
  <a href="https://github.com/ZEGOCLOUD/zego_uikit_prebuilt_video_conference_example_flutter/tree/master/video_conference" class="md-grid-item" target="_blank">
    <div class="grid-title">Sample code</div>
    <div class="grid-desc">Click here to get the complete sample code.</div>
  </a>
</div>
