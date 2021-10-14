import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

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
        onPressed: () => Navigator.pop(
            context, 'return value'), //Navigator.pushNamed(context, '/'),
        child: const Icon(Icons.done),
      ), //
    );
  }
}
