import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  saveConviction(String val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('CONVICTION', val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // 戻るボタン非表示
          automaticallyImplyLeading: false,
          title: Row(
            children: const [
              Icon(Icons.settings),
              Text('設定'),
            ],
          )),
      body: Center(
        child: TextField(
          keyboardType: TextInputType.multiline,
          maxLines: 4,
          decoration: const InputDecoration(border: OutlineInputBorder()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          saveConviction('2nd');
          Navigator.pop(context);
        }, //Navigator.pushNamed(context, '/'),
        child: const Icon(Icons.done),
      ), //
    );
  }
}
