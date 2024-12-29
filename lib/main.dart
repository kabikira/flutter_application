import 'package:flutter/material.dart';

void main() {
  final popupMenu = PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              value: 'search',
              child: ListTile(
                leading: Icon(Icons.search),
                title: Text('検索する'),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 'calendar',
              child: ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text('カレンダー'),
              ),
            ),
            const PopupMenuItem(
              value: 'print',
              child: ListTile(
                leading: Icon(Icons.print),
                title: Text('印刷する'),
              ),
            )
          ],
      onSelected: (value) {
        switch (value) {
          case 'search':
            print("検索");
          case 'calendar':
            print("カレンダー");
          case 'print':
            print("印刷");
        }
      });
  final appBar = AppBar(
    title: const Text('アプリのタイトル'),
    actions: [
      popupMenu,
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
