import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // デバッグラベルを消す
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
  int _selectedIndex = 0;
  _onTapped(int index) {
    // 1
    setState(() {
      _selectedIndex = index;
    });
  }

  final _items = [
    const BottomNavigationBarItem(
      // index:0
      icon: Icon(Icons.home),
      label: 'ホーム',
      tooltip: '「ホーム」画面を表示します',
    ),
    const BottomNavigationBarItem(
      // index:1
      icon: Icon(Icons.help),
      label: '使い方',
      tooltip: '「使い方」画面を表示します',
    ),
    const BottomNavigationBarItem(
      // index:2
      icon: Icon(Icons.settings),
      label: '設定',
      tooltip: '「設定」画面を表示します',
    ),
  ];

  final _screens = [
    // 2
    const HomeScreen(),
    const HelpScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final bnBar = BottomNavigationBar(
      items: _items,
      backgroundColor: Colors.grey[800],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedIndex,
      onTap: _onTapped, // 1
    );

    final body = Center(child: _screens[_selectedIndex]);

    return Scaffold(
      body: body, // ボディー
      bottomNavigationBar: bnBar, // ボトムナビゲーションバー
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const body = Center(child: Text('ホーム'));
    return const Scaffold(
      body: body,
    );
  }
}

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const body = Center(child: Text('使い方'));
    return const Scaffold(
      body: body,
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const body = Center(child: Text('設定'));
    return const Scaffold(
      body: body,
    );
  }
}
