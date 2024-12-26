import 'package:flutter/material.dart';

void main() {
  const body = SafeArea(
    child: Row(
      children: [
        Text("あいうえおかきくけこさしすせそ"),
        SizedBox(
          width: 70,
          child: Text(
              maxLines: 1, overflow: TextOverflow.ellipsis, "アイウエロカキくけこさしすせそ"),
        )
      ],
    ),
  );

  const sc = Scaffold(body: body);

  const app = MaterialApp(home: sc);
  runApp(app);
}
