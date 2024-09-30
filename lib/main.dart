import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'Settings/Header.dart';  
import 'settingPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Settings.init(cacheProvider: SharePreferenceCache());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'My App';

  @override
  Widget build(BuildContext context) {
    return ValueChangeObserver<bool>(
      cacheKey: HeaderPage.keyDarkMode,  // Listening to dark mode setting
      defaultValue: false,  // Default value for dark mode is false
      builder: (_, isDarkMode, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: isDarkMode
            ? ThemeData.dark().copyWith(
                primaryColor: Colors.teal,
                colorScheme: ColorScheme.dark().copyWith(
                  secondary: Colors.white,
                ),
                scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
                canvasColor: const Color.fromARGB(255, 0, 0, 0),
              )
            : ThemeData.light(),  // Light mode
        home: SettingsPage(),
      ),
    );
  }
}

