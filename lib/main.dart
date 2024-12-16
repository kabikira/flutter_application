import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  const text = Text('テキスト');

  final textFocus = Focus(
    autofocus: true,
    onKeyEvent: (node, event) {
      final key = event.logicalKey;
      if (event is KeyDownEvent) {
        if (key == LogicalKeyboardKey.enter) {
          print('Enterキーが押されました');
          return KeyEventResult.handled;
        }
      }
      return KeyEventResult.ignored;
    },
    child: text,
  );

  final sc = Scaffold(body: textFocus);
  final app = MaterialApp(home: sc);
  runApp(app);
}
