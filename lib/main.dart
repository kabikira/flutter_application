import 'package:flutter/material.dart';

void main() {
  final appBar = AppBar(
    title: const Text('アプリのタイトル'),
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
