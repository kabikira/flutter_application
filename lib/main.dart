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

class User {
  // Userクラス
  final int id; // ユーザーID
  final String name; // ユーザー名
  User(this.id, this.name);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<User> _users = []; // User型のList

  _MyHomePageState() {
    for (int i = 1; i <= 50; i++) {
      // Listに50個分要素を追加。
      _users.add(User(i, 'ユーザー$i'));
    }
  }

  @override
  Widget build(BuildContext context) {
    final list = ReorderableListView.builder(
      // 1
      onReorder: (int oldIndex, int newIndex) {
        // 2
        setState(() {
          // 3
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final User user = _users.removeAt(oldIndex);
          _users.insert(newIndex, user);
        });
      },
      itemCount: _users.length,
      itemBuilder: (c, i) => ListTile(
        key: Key((_users[i].id).toString()), // 4
        title: Text(_users[i].name),
      ),
    );

    final body = Column(
      // ボディー
      children: [
        const Text('リストの上'),
        Expanded(
          child: list,
        ),
        const Text('リストの下'),
      ],
    );

    return Scaffold(
      body: body, // ボディー
    );
  }
}
