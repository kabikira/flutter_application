import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // これを追加

Future<KeyEventResult> manageKeyboard(KeyEvent event) async {
  final key = event.logicalKey;
  if (event is KeyDownEvent) {
    if (key == LogicalKeyboardKey.enter) {
      // Enterキー押下時
      await Future.delayed(Duration(seconds: 10));
      print('10秒後に実行');
      return KeyEventResult.handled;
    }
  }
  return KeyEventResult.ignored;
}

void main() {
  final text = Text('テキスト');

  final textFocus = Focus(
    autofocus: true,
    onKeyEvent: (node, event) {
      // onKeyEventはasyncに対応してません。
      manageKeyboard(event); // 別途、非同期用の関数を定義し、呼び出します。
      return KeyEventResult.ignored;
    },
    child: text,
  );
  final sc = Scaffold(
    body: textFocus,
  );
  final app = MaterialApp(home: sc);
  runApp(app);
}
