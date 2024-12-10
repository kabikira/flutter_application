import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _msg = "";
  bool _isChecked = false;
  int _radioValue = 0;
  bool _isOn = false;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // テキスト
    const text = Text('テキスト');

    const textArea = Column(
      children: [text],
    );

    // ボタン
    final button = ElevatedButton(
      onPressed: () {
        print("ボタンが");
        print("押されました");
      },
      child: const Text("ボタン"),
    );

    // テキストボタン
    fn() {
      print("関数実行");
    }

    final textbutton = TextButton(onPressed: fn, child: const Text("テキストボタン"));

    final buttonArea = Row(
      children: [
        button,
        textbutton,
      ],
    );

    final body = SafeArea(
        child: Column(
      children: [
        textArea,
        buttonArea,
      ],
    ));

    return Scaffold(
      body: body,
    );
  }
}
