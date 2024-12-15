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

  const formKey = GlobalObjectKey<FormState>('FORM_KEY');

  final form = Form(
    key: formKey,
    autovalidateMode: AutovalidateMode.always,
    child: textFormField,
  );

  final button = ElevatedButton(
    onPressed: () {
      if (formKey.currentState!.validate()) {
        print("バリデート通過時の処理");
      } else {
        print("バリデートエラー時の処理");
      }
    },
    child: const Text('ボタン'),
  );

  final body = Column(
    children: [
      form,
      button,
    ],
  );

  final sc = Scaffold(
    body: body,
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}
