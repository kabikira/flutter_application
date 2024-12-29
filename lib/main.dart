import 'package:flutter/material.dart';

void main() {
  final dc = DrawerHeader(child: Text('ドロワーのヘッダー'));
  final drawer = Drawer(
    child: dc,
  );
  final appBar = AppBar(
    title: const Text('アプリのタイトル'),
  );

  final sc = Scaffold(
    appBar: appBar,
    drawer: drawer,
    body: const Text("テキスト"),
  );

  final app = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sc,
  );
  runApp(app);
}
