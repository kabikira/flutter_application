import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  final controller = TextEditingController();
  final addTextField = TextField(
    autofocus: true,
    controller: controller,
  );

  final addTextFieldFocus = Focus(
    autofocus: false,
    onKeyEvent: (node, event) {
      final key = event.logicalKey;
      if (event is KeyDownEvent) {
        if (key == LogicalKeyboardKey.enter) {
          print(controller.text);
          return KeyEventResult.handled;
        }
      }
      return KeyEventResult.ignored;
    },
    child: addTextField,
  );

  final sc = Scaffold(body: addTextFieldFocus);
  final app = MaterialApp(home: sc);
  runApp(app);
}
