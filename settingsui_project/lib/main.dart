import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  get value => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Settings",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 120,
      ),
      body: SettingsList(
        backgroundColor: Colors.white,
        sections: [
          SettingsSection(
            tiles: [
              // Connections
              SettingsTile(
                title: 'Connections',
                subtitle: 'Wi-Fi, Bluetooth, Flight mode, Data usage',
                leading: Icon(
                  Icons.wifi,
                  color: Colors.blue,
                ),
                onPressed: (BuildContext context) {},
              ),

              // Sound and Vibration
              SettingsTile(
                title: 'Sound and Vibration',
                subtitle: 'Sound mode, Ringtone, Volume',
                leading: Icon(
                  Icons.volume_down,
                  color: Colors.deepPurpleAccent,
                ),
                onPressed: (BuildContext context) {},
              ),

              // Notifications
              SettingsTile(
                title: 'Notifications',
                subtitle: 'App notifications, Status bar, Do not disturb',
                leading: Icon(
                  Icons.notification_important,
                  color: Colors.red,
                ),
                onPressed: (BuildContext context) {},
              ),

              // Display
              SettingsTile(
                title: 'Display',
                subtitle: 'Brightness, Blue light filter,',
                leading: Icon(
                  Icons.brightness_low_sharp,
                  color: Colors.yellow,
                ),
                onPressed: (BuildContext context) {},
              ),

              // Wallpaper
              SettingsTile(
                title: 'Wallpaper',
                subtitle: 'Home Screen Wallpaper, Lock Screen Wallpaper',
                leading: Icon(
                  Icons.wallpaper_sharp,
                  color: Colors.pink,
                ),
                onPressed: (BuildContext context) {},
              ),

              // Themes
              SettingsTile(
                title: 'Themes',
                subtitle: 'Themes, Wallpapers, Icons',
                leading: Icon(
                  Icons.wallet_membership,
                  color: Colors.purple,
                ),
                onPressed: (BuildContext context) {},
              ),

              // Lock Screen
              SettingsTile(
                title: 'Lock Screen',
                subtitle: 'Screen lock type, Always On Display, Clock style',
                leading: Icon(
                  Icons.lock,
                  color: Colors.blueGrey[500],
                ),
                onPressed: (BuildContext context) {},
              ),

              // Biometrics and security
              SettingsTile(
                title: 'Biometrics and security',
                subtitle: 'Intelligent Scan, Face recognition, Find My Mobile',
                leading: Icon(
                  Icons.security,
                  color: Colors.blue[900],
                ),
                onPressed: (BuildContext context) {},
              ),

              // Privacy
              SettingsTile(
                title: 'Privacy',
                subtitle: 'Permission Manager',
                leading: Icon(
                  Icons.privacy_tip_rounded,
                  color: Colors.blue[700],
                ),
                onPressed: (BuildContext context) {},
              ),

              // Location
              SettingsTile(
                title: 'Location',
                subtitle: 'Location settings, Location requests',
                leading: Icon(
                  Icons.location_on,
                  color: Colors.green,
                ),
                onPressed: (BuildContext context) {},
              ),

              // Accounts and backup
              SettingsTile(
                title: 'Accounts and backup',
                subtitle: 'Samsung Cloud, Smart Switch',
                leading: Icon(
                  Icons.vpn_key,
                  color: Colors.blueAccent[700],
                ),
                onPressed: (BuildContext context) {},
              ),

              // Google
              SettingsTile(
                title: 'Google',
                subtitle: 'Google settings',
                leading: Icon(
                  Icons.settings,
                  color: Colors.blueAccent[200],
                ),
                onPressed: (BuildContext context) {},
              ),

              // Advanced features
              SettingsTile(
                title: 'Advanced features',
                subtitle: 'Motions and gestures, One-handed mode',
                leading: Icon(
                  Icons.emoji_emotions,
                  color: Colors.yellow[800],
                ),
                onPressed: (BuildContext context) {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
