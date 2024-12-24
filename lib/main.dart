import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // 1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isOn = false;

  _MyHomePageState() {
    // 8
    final f = _loadSettingA();
    f.then((value) => {
          setState(() {
            _isOn = value;
          })
        });
  }

  Future<void> _saveSettingA(bool value) async {
    // 2
    final prefs = await SharedPreferences.getInstance(); // 3

    await prefs.setBool(
        // 4
        'settingA',
        value);
  }

  Future<bool> _loadSettingA() async {
    // 5
    final prefs = await SharedPreferences.getInstance(); // 6
    final value = prefs.getBool('settingA');
    return value ?? false; // 7
  }

  @override
  Widget build(BuildContext context) {
    final switchText = Text(_isOn ? "設定A:オン" : "設定A:オフ");
    final toggle = Switch(
      value: _isOn,
      onChanged: (value) {
        setState(() {
          _isOn = value;
          _saveSettingA(value); // 9
        });
      },
    );

    final body = SafeArea(
      // ボディー
      child: Row(
        children: [
          switchText,
          toggle,
        ],
      ),
    );

    return Scaffold(
      body: body, // ボディー
    );
  }
}
