import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  final button1 = ElevatedButton(
    onPressed: () {
      Fluttertoast.showToast(msg: "トースト");
    },
    child: const Text("トースト"),
  );

  final button2 = ElevatedButton(
    onPressed: () {
      Fluttertoast.showToast(
        msg: "長いトースト",
        toastLength: Toast.LENGTH_LONG,
      );
    },
    child: const Text("長いトースト"),
  );

  final sc = Scaffold(
    body: Column(
      children: [button1, button2],
    ),
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}
