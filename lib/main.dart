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

// テキストフィールド
    final textfieldText = Text('メッセージ:$_msg');
    final controller = TextEditingController();

    final textfield = TextField(
      controller: controller,
      autocorrect: true,
      decoration: const InputDecoration(
        labelText: "内容",
        hintText: "100文字以内で入力してください",
      ),
      onChanged: (text) {
        print("value: $text");
      },
    );

    setMsg() {
      setState(() {
        _msg = controller.text;
      });
    }

    clear() {
      controller.clear();
    }

    final setMsgButton = ElevatedButton(
      onPressed: setMsg,
      child: const Text("反映"),
    );

    final clearButton = ElevatedButton(
      onPressed: clear,
      child: const Text("クリア"),
    );

    final textfieldArea = Column(
      children: [
        textfieldText,
        textfield,
        Row(
          children: [
            setMsgButton,
            clearButton,
          ],
        ),
      ],
    );

    final isCheckedText = Text("チェック：${_isChecked ? "オン" : "オフ"}");

    final checkbox = Checkbox(
      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
    );

    const checkboxText = Text("チェックボックス");

    final checkboxArea = Row(
      children: [
        isCheckedText,
        checkbox,
        checkboxText,
      ],
    );

    // ラジオボタン
    final radio1 = Radio(
      value: 1,
      groupValue: _radioValue,
      onChanged: (value) {
        setState(() {
          _radioValue = value!;
        });
      },
    );
    const radiotext1 = Text('Android');

    final radio2 = Radio(
      value: 2,
      groupValue: _radioValue,
      onChanged: (value) {
        setState(() {
          _radioValue = value!;
        });
      },
    );
    const radiotext2 = Text('iOS');

    const radioMap = {
      0: "未選択",
      1: "Android",
      2: "iOS",
    };
    final radioText = Text("デバイス：${radioMap[_radioValue]}");

    final radioArea = Row(
      children: [
        radio1,
        radiotext1,
        const SizedBox(width: 10.0),
        radio2,
        radiotext2,
        const SizedBox(width: 20.0),
        radioText
      ],
    );

    // スイッチ
    final switchText = Text(_isOn ? "オン" : "オフ");
    final toggle = Switch(
      value: _isOn,
      onChanged: (value) {
        setState(() {
          _isOn = value;
        });
      },
    );

    final switchArea = Row(
      children: [
        switchText,
        toggle,
      ],
    );

    final body = SafeArea(
      child: Column(
        children: [
          textArea,
          buttonArea,
          textfieldArea,
          checkboxArea,
          radioArea,
          switchArea,
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
