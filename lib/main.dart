import 'package:flutter/material.dart';

void main() {
  final appBar = AppBar(
    backgroundColor: Colors.orange[50],
    title: const Text('アプリのタイトル'),
    centerTitle: true,
    titleTextStyle: const TextStyle(
      fontStyle: FontStyle.italic,
      fontSize: 20,
      color: Colors.green,
    ),
    leading: IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
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
