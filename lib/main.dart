import 'package:flutter/material.dart';

void main() {
  const body = SafeArea(
    child: Text("テキスト"),
  );

  const sc = Scaffold(
    body: body,
  );

  const app = MaterialApp(home: sc);
  runApp(app);
}
