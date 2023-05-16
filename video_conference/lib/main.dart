// Flutter imports:
import 'package:flutter/material.dart';
import 'package:video_conference/home_page.dart';

// Package imports:
import 'package:zego_uikit/zego_uikit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ZegoUIKit().initLog().then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
