// Flutter imports:
import 'package:flutter/material.dart';
import 'package:video_conference/constants.dart';

// Package imports:
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

// Project imports:
import 'common.dart';

class VideoConferencePage extends StatefulWidget {
  final String conferenceID;

  const VideoConferencePage({
    Key? key,
    required this.conferenceID,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => VideoConferencePageState();
}

class VideoConferencePageState extends State<VideoConferencePage> {
  final controller = ZegoUIKitPrebuiltVideoConferenceController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID: yourAppID /*input your AppID*/,
        appSign: yourAppSign /*input your AppSign*/,
        userID: localUserID,
        userName: 'user_$localUserID',
        conferenceID: widget.conferenceID,
        controller: controller,
        config: ZegoUIKitPrebuiltVideoConferenceConfig()
          ..avatarBuilder = customAvatarBuilder,
      ),
    );
  }
}
