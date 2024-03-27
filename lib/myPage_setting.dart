import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'main.dart';

bool darkTheme = false;

class MyPage_Setting extends StatefulWidget {
  const MyPage_Setting({Key? key}) : super(key: key);

  @override
  State<MyPage_Setting> createState() => _MyPage_SettingState();
}

class _MyPage_SettingState extends State<MyPage_Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SettingsList(
        sections: [
          SettingsSection(
            title: Text('HEADLINE1'),
            tiles: [
              SettingsTile.navigation(
                onPressed: (_) {},
                title: Text('Title'),
                value: Text('Value'),
                description: Text(
                  '',
                ),
              ),
              SettingsTile.navigation(
                onPressed: (_) {},
                title: Text('Title'),
                value: Text(''),
                description: Text(
                  '',
                ),
              ),
            ],
          ),
          SettingsSection(
            title: Text(''),
            tiles: [
              SettingsTile.navigation(
                onPressed: (_) {},
                title: Text('Title'),
                value: Text(''),
                description: Text(
                  '',
                ),
              ),
              SettingsTile.navigation(
                onPressed: (_) {},
                title: Text('Title'),
                value: Text('Value'),
                description: Text(
                  '',
                ),
              ),
              SettingsTile.navigation(
                onPressed: (_) {},
                title: Text('Title'),
                value: Text(''),
                description: Text(
                  '',
                ),
              ),
            ],
          ),
          SettingsSection(
            title: Text('HEADLINE2'),
            tiles: [
              SettingsTile.navigation(
                  onPressed: (_) {},
                  title: Text('Title'),
                  value: Text(''),
                  description: Text(''),
                  leading: Icon(Icons.square_rounded)),
              SettingsTile.switchTile(
                onToggle: (value) {
                  setState(() {
                    darkTheme = value;
                  });
                },
                initialValue: darkTheme,
                title: Text('Title'),
                leading: Icon(Icons.square_rounded),
              ),

              SettingsTile.navigation(
                  onPressed: (_) {},
                  title: Text('Title'),
                  value: Text('Value'),
                  description: Text(''),
                  leading: Icon(Icons.square_rounded)),
              SettingsTile.navigation(
                  onPressed: (_) {},
                  title: Text('Title'),
                  value: Text(''),
                  description: Text(''),
                  leading: Icon(Icons.square_rounded)),
            ],
          ),
        ],
      ),
    );
  }
}
