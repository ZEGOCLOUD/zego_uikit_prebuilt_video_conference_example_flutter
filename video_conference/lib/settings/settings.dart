import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import 'package:video_conference/settings/defines.dart';

class SettingsDrawer extends StatefulWidget {
  const SettingsDrawer({Key? key}) : super(key: key);

  @override
  State<SettingsDrawer> createState() {
    return _SettingsDrawerState();
  }
}

class _SettingsDrawerState extends State<SettingsDrawer> {
  RadioGroupController roleController = RadioGroupController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width / 5.0 * 4;

    return SafeArea(
      child: Drawer(
        width: width,
        child: Container(
          color: Colors.white.withOpacity(0.2),
          margin: const EdgeInsets.all(10),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              group('Role', [role()]),
            ],
          ),
        ),
      ),
    );
  }

  Widget role() {
    return RadioGroup(
      controller: roleController,
      values: const ['Host', 'audience'],
      indexOfDefault: settingsValue.role.index,
      decoration: const RadioGroupDecoration(
        spacing: 10.0,
        labelStyle: TextStyle(
          color: Colors.blue,
        ),
        activeColor: Colors.amber,
      ),
      onChanged: (dynamic data) {
        final role = data as String? ?? '';
        if (role.isEmpty) {
          return;
        }

        settingsValue.role = 'Host' == role ? Role.Host : Role.Audience;
      },
    );
  }

  Widget group(String title, List<Widget> children) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(title),
        ),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }

  Widget line() {
    return Container(
      color: Colors.black.withOpacity(0.2),
      height: 1,
      margin: EdgeInsets.all(20),
    );
  }
}
