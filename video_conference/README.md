- - -
# Overview
- - -


**Video Conference Kit** is a prebuilt feature-rich component, which enables you to build video conferences into your app in minutes. 

And it includes the business logic with the UI, you can add or remove features accordingly by customizing UI components.

|First comer's view| Later comer's view|
|---|---|
|![user1.gif](./../images/user1.gif)|![user2.gif](./../images/user2.gif)|



## When do you need the Video Conference Kit

- Build apps faster and easier
  > - Want to prototype video conferences **ASAP**
  > - Consider **speed or efficiency** as the top priority
  > - Video Conference Kit allows you to **integrate in minutes**

- Customize UI and features as needed
  > - Want to customize features **based on actual business needs**
  > - **Less time wasted** developing basic features
  > - Video Conference Kit includes the business logic along with the UI, allows you to **customize features accordingly**



## Embedded features

- Multi-user audio/video conferences
- Adaptive video layouts
- Real-time sound waves display
- Customizable UI styles
- Device management
- Extendable top/bottom menu bar
- Customizable conference title
- Member list
- Live text chat
- Conference join/leave notifications


## Recommended resources


* I want to get started:
  Follow [QUICK START](https://docs.zegocloud.com/article/14894) to get started swiftly. 
  
* I want to get the [Sample Code](https://github.com/ZEGOCLOUD/zego_uikit_prebuilt_video_conference_example_flutter):

* To [Custom Prebuilt UI](https://docs.zegocloud.com/article/14898) for a custom experience: 

* To finest-grained build an video conference, you may try [Fully customized with SDKs](https://docs.zegocloud.com/article/5560)

- - -
# Quick start
- - -

<video poster="https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/videos/How_to_build_Video_Conference_using_Flutter.png" src="https://storage.zego.im/sdk-doc/doc/video/ZegoUIKit/How_to_build_Video_Conference_using_Flutter.mp4" width="80%" preload="auto" controls></video>

## Integrate the SDK

### Add ZegoUIKitPrebuiltVideoConference as dependencies

Run the following code in your project root directory: 

```dart
flutter pub add zego_uikit_prebuilt_video_conference
```

### Import the SDK

Now in your Dart code, import the prebuilt Video Conference Kit SDK.

```dart
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference';
```

### Using the ZegoUIKitPrebuiltVideoConference in your project

- Go to [ZEGOCLOUD Admin Console](https://console.zegocloud.com/), get the `appID` and `appSign` of your project.
- Specify the `userID` and `userName` for connecting the Video Conference Kit service. 
- Create a `conferenceID` that represents the video conference you want to start. 

<div class="mk-hint">

- `userID` and `conferenceID` can only contain numbers, letters, and underlines (_). 
- Using the same `conferenceID` will enter the same video conference.

</div>


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
        appID: YourAppID, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: YourAppSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
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
1. If your project is created with Flutter 2.x.x, you will need to open the `your_project/android/app/build.gradle` file, and modify the `compileSdkVersion` to 33.


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

3. Prevent code obfuscation.

To prevent obfuscation of the SDK public class names, do the following:

a. In your project's `your_project > android > app` folder, create a `proguard-rules.pro` file with the following content as shown below:

<pre style="background-color: #011627; border-radius: 8px; padding: 25px; color: white"><div>
-keep class **.zego.** { *; }
</div></pre>

b. Add the following config code to the `release` part of the `your_project/android/app/build.gradle` file.

<pre style="background-color: #011627; border-radius: 8px; padding: 25px; color: white"><div>
proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
</div></pre>

![android_class_confusion.png](https://storage.zego.im/sdk-doc/Pics/ZegoUIKit/Flutter/android_class_confusion.png)

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

[Custom prebuilt UI](https://docs.zegocloud.com/article/14898)
