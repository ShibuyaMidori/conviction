import 'package:flutter/material.dart';
import 'package:conviction/settings.dart';

void main() {
  runApp(
    MaterialApp(
      title: '信念',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    ),
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  // String conviction = '1st';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: const [
              Icon(Icons.favorite),
              Text('信念'),
            ],
          )),
      body: Center(child: Text('conviction')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/settings'),
        child: const Icon(Icons.settings),
      ), //
    );
  }

  // データ連携に必要？
  void _navigateAndDisplaySelection(BuildContext context) async {
    String conviction = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingsScreen()),
    );
  }
}
