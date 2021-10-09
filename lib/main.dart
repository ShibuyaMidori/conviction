import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  final String myMessage = 'あなたの人生は、あなたのもの\n\nYour life is yours.';
  final String settingMessage = '\n\n\n漠然と毎日見るのではなく\n時々「ふりかえり」ませんか\n\n\n';
  final String updateMessage =
      '今後は任意の文字を自由に\n設定できるようにする予定です。\n\n少々、お待ちください。\n\n\n・アップデート予定\n任意の文字設定\nカラー設定（文字、背景）';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.favorite)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
            title: const Text('信念'),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text(
                  myMessage,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
              Column(children: <Widget>[
                Text(
                  settingMessage,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  updateMessage,
                  style: const TextStyle(fontSize: 16),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
