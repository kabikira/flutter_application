import 'package:flutter/material.dart';

Future<String> dataFetch() async {
  await Future.delayed(const Duration(seconds: 1));
  return "データ";
}

void main() {
  final button = ElevatedButton(
    onPressed: () async {
      final data = await dataFetch();
      print(data);
    },
    child: const Text("ボタン"),
  );

  final sc = Scaffold(
    body: button,
  );
  final app = MaterialApp(home: sc);
  runApp(app);
}
