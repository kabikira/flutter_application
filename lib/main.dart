import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // これを追加

class TestIntent extends Intent {} // インテントクラス

void test() async {
  await Future.delayed(const Duration(seconds: 10));
  // インテント時の処理関数
  print('「Control + N」が押された10秒後に実行');
}

void main() {
  // LogicalKeySetオブジェクトを作成（「Control + N」の例）
  final lksControlN =
      LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyN);

  final text = Text('テキスト');
  final body = text; // ボディー
  final faDetector = FocusableActionDetector(
    // 1
    autofocus: true, // 2
    shortcuts: <ShortcutActivator, Intent>{
      // 3
      lksControlN: TestIntent(),
    },
    actions: {
      // 4
      TestIntent: CallbackAction<TestIntent>(
        onInvoke: (intent) => test(),
      ),
    },
    child: body, // 5
  );

  final sc = Scaffold(
    body: faDetector, // 6
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}
