import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import '../Widget/IconWidget.dart';
import '../Widget/Utils.dart';

class AccountPage extends StatelessWidget{
  static const keyLanguage = "key-Language";
  static const keyLocation = "key-Location";
  static const keyPassword = "key-Password";

  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: 'Account Settings',
        subtitle: 'Privacy, Security, Language',
        leading: IconWidget(icon: Icons.person, color: Colors.green,),
        child: SettingsScreen(
          title: 'Account Settings',
          children: <Widget>[
            buildLanguage(),
            buildLocation(),
            buildPassword(),
            buildPrivacy(context),
            buildSecurity(context),
            buildAccountInfo(context),
          ],
        )
  );

  Widget buildLanguage() => DropDownSettingsTile(
        title: 'Language', 
        settingKey: keyLanguage, 
        selected: 1, 
        values: <int, String> {
          1: 'English',
          2: 'Spanish',
          3: 'French',
          4: 'Portuguese', 
        },
        onChange: (language) {/* NOOP */},
  );

  Widget buildLocation() => TextInputSettingsTile(
        title: 'Location', 
        settingKey: keyLocation, 
        initialValue: 'Mauritius', 
        onChange: (language) {/* NOOP */},
  );

  Widget buildPassword() => TextInputSettingsTile(
        title: 'Password', 
        settingKey: keyPassword,
        obscureText: true,
        validator: (password) => password != null && password.length >= 8
            ? null
            : 'Enter 8 Characters',
  );

  Widget buildPrivacy(BuildContext context) => SimpleSettingsTile(
        title: 'Privacy',
        subtitle: '',
        leading: IconWidget(icon: Icons.logout, color: Colors.blue),
        onTap: () => Utils.showSnacksBar(context, 'Clicked privacy'),
  );
  
  Widget buildSecurity(BuildContext context) => SimpleSettingsTile(
        title: 'Security',
        subtitle: '',
        leading: IconWidget(icon: Icons.logout, color: Colors.red),
        onTap: () => Utils.showSnacksBar(context, 'Clicked Logout'),
  );

  Widget buildAccountInfo(BuildContext context) => SimpleSettingsTile(
        title: 'Account Info',
        subtitle: '',
        leading: IconWidget(icon: Icons.logout, color: Colors.purple),
        onTap: () => Utils.showSnacksBar(context, 'Clicked Logout'),
  );

  
}