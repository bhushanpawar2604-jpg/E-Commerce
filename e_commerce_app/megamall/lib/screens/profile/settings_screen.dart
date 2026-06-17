import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            trailing: Icon(Icons.arrow_forward_ios,size: 16),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Privacy"),
            trailing: Icon(Icons.arrow_forward_ios,size: 16),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.language),
            title: Text("Language"),
            trailing: Icon(Icons.arrow_forward_ios,size: 16),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("Dark Mode"),
            trailing: Icon(Icons.arrow_forward_ios,size: 16),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help Center"),
            trailing: Icon(Icons.arrow_forward_ios,size: 16),
          ),
        ],
      ),
    );
  }
}