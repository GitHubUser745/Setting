import 'package:flutter/material.dart';
import 'Widget/IconWidget.dart';
import 'Widget/Utils.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'Settings/AccountPage.dart';
import 'Settings/Header.dart';

class SettingsPage extends StatefulWidget {
  @override
  MySettingsPage createState() => MySettingsPage();
}

class MySettingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) =>  Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [          
              SettingsGroup(
                title: 'Dark Mode',
                children: <Widget>[
                  HeaderPage(),
                ],
              ),
              
              const SizedBox(height: 20),

              SettingsGroup(
                title: 'GENERAL',
                children: <Widget>[
                  AccountPage(),
                  buildLogout(),
                  buildDeleteAccount(),
                ],
              ),
              const SizedBox(height: 30),
               SettingsGroup(
                title: 'FEEDBACK',
                children: <Widget>[
                  const SizedBox(height: 7),
                  buildReportBug(context),
                  buildSendFeedback(context),
                ],
              ),
            ],
          )
        ),
      );
  
  
  Widget buildLogout() => SimpleSettingsTile(
        title: 'Logout',
        subtitle: '',
        leading: IconWidget(icon: Icons.logout, color: Colors.blueAccent),
        onTap: () => Utils.showSnacksBar(context, 'Clicked Logout'),
  );

  Widget buildDeleteAccount() => SimpleSettingsTile(
        title: 'Delete Acount',
        subtitle: '',
        leading: IconWidget(icon: Icons.logout, color: Colors.pink),
        onTap: () => Utils.showSnacksBar(context, 'Clicked Delete Account'),
  );

    Widget buildReportBug(BuildContext context) => SimpleSettingsTile(
        title: 'Logout',
        subtitle: '',
        leading: IconWidget(icon: Icons.logout, color: Colors.teal),
        onTap: () => Utils.showSnacksBar(context, 'Clicked Report A Bug'),
  );

  Widget buildSendFeedback(BuildContext context) => SimpleSettingsTile(
        title: 'Delete Acount',
        subtitle: '',
        leading: IconWidget(icon: Icons.logout, color: Colors.purple),
        onTap: () => Utils.showSnacksBar(context, 'Clicked Send Feedback'),
  );

}

