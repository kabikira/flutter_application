import 'package:flutter/material.dart';

void main() {
  final textFormField = TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return '入力されていません';
      }
      return null;
    },
  );

  final form = Form(
    autovalidateMode: AutovalidateMode.always,
    child: textFormField,
  );

  final body = form;

  final sc = Scaffold(
    body: body,
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}
