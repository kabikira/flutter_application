import 'package:flutter/material.dart';

void main() {
  final appBar = AppBar(
    title: const Text('アプリのタイトル'),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert),
      ),
    ],
  );
  final sc = Scaffold(
    appBar: appBar,
    body: const Text("テキスト"),
  );
  final app = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sc,
  );
  runApp(app);
}
