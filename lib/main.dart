import 'package:flutter/material.dart';
import 'env.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final apiKey = Env.apiKey;

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Text("APIキー：$apiKey"),
        ),
      ),
    );
  }
}
