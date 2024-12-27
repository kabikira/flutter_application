import 'package:flutter/material.dart';

void main() {
  const body = Center(
    child: Text("テキスト"),
  );
  final fab = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FloatingActionButton(
        onPressed: () {
          print("ボタンが押されました");
        },
        child: const Icon(Icons.add),
      ),
      const SizedBox(
        width: 10,
      ),
      FloatingActionButton(
        onPressed: () {
          print("ボタンが押されました");
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.edit),
      )
    ],
  );

  final sc = Scaffold(
    body: body,
    floatingActionButton: fab,
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}
