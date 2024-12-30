import 'package:flutter/material.dart';

void main() {
  final dc = ListView(
    children: [
      DrawerHeader(
        padding: const EdgeInsets.all(0),
        child: Container(
          color: Colors.green[50],
          alignment: Alignment.center,
          child: const Text('ドロワーのヘッダー'),
        ),
      ),
      ListTile(
        title: const Text('アイテム1'),
        onTap: () {
          print('アイテム1');
        },
      ),
      ListTile(
        title: const Text('アイテム2'),
        onTap: () {
          print('アイテム2');
        },
      ),
      ListTile(
        title: const Text('アイテム3'),
        onTap: () {
          print('アイテム3');
        },
      ),
    ],
  );
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
