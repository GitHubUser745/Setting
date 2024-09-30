import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import '../Widget/IconWidget.dart';

class HeaderPage extends StatelessWidget {
  static const keyDarkMode = 'key-dark-mode';  // Correct capitalization

  @override
  Widget build(BuildContext context) => Column(
        children: [         
          const SizedBox(height: 30),
          buildDarkMode(),
        ],
      );

  Widget buildDarkMode() => SwitchSettingsTile(
        title: 'Dark Mode',
        settingKey: keyDarkMode,  // Use keyDarkMode
        leading: IconWidget(
          icon: Icons.dark_mode,
          color: const Color.fromARGB(255, 50, 25, 141),
        ),
      );
}




