import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

var settingsValue = SettingsValue();

class SettingsValue {
  Role role = Role.Audience;
}

enum Role { Host, Audience }
