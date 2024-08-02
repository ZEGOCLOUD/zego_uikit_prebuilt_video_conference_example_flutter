// Dart imports:

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:video_conference/settings/settings.dart';

import 'package:video_conference/video_conference_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  /// Users who use the same conferenceID can in the same conference.
  var conferenceDTextCtrl = TextEditingController(text: 'video_conference_id');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const SettingsDrawer(),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: conferenceDTextCtrl,
                        decoration: const InputDecoration(
                            labelText: 'join a conference by id'),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return VideoConferencePage(
                                conferenceID: conferenceDTextCtrl.text.trim(),
                              );
                            }),
                          );
                        },
                        child: const Text('join'))
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
                icon: Icon(Icons.settings),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
