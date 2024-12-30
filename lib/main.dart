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

  final _items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.help),
      label: 'ホーム',
      tooltip: '「ホーム」画面を表示します',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.help),
      label: '使い方',
      tooltip: '「使い方」画面を表示します',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.help),
      label: '設定',
      tooltip: '「設定」画面を表示します',
    ),
  ];

  final _screens = [
    const Text('ホーム'),
    const Text('使い方'),
    const Text('設定'),
  ];

  @override
  Widget build(BuildContext context) {
    final bnBar = BottomNavigationBar(
        items: _items,
        backgroundColor: Colors.grey[800],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        });

    final body = Center(child: _screens[_selectedIndex]);

    return Scaffold(
      body: body,
      bottomNavigationBar: bnBar,
    );
  }
}
