import 'package:flutter/material.dart';
import 'package:conviction/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  debugPrint('main');
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

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _conviction = '1st';

  loadConviction() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _conviction = prefs.getString('CONVICTION') ?? 'Your life is yours.';
    return prefs.getString('CONVICTION') ?? 'Your life is yours.';
  }

  void _setConviction() {
    setState(() {
      // _conviction = 'loadConviction';
    });
  }

  @override
  Widget build(BuildContext context) {
    _setConviction();

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: const [
              Icon(Icons.favorite),
              Text('信念'),
            ],
          )),
      body: Center(child: Text(_conviction)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/settings'),
        child: const Icon(Icons.settings),
      ),
    );
  }

  // // データ連携に必要？
  // void _navigateAndDisplaySelection(BuildContext context) async {
  //   String ret = await Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const SettingsScreen()),
  //   );
  //
  //   _setConviction();
  //   // log('ret1:');
  //   // log(ret);
  //   print('ret2:');
  //   print(ret);
  //   debugPrint('ret3:');
  //   debugPrint(ret);
  // }
}
