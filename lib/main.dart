import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final snackbar = SnackBar(
      content: const Text('スナックバー'),
      duration: const Duration(milliseconds: 10000),
      showCloseIcon: true,
      onVisible: () {
        print('スナックバーが表示されました');
      },
      action: SnackBarAction(
        label: 'アクションボタン',
        onPressed: () {
          print('アクションボタンが押されました');
        },
      ),
    );
    final button = ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          snackbar,
        );
      },
      child: const Text('ボタン'),
    );
    return Scaffold(
      body: button,
    );
  }
}

class ColoredText extends StatelessWidget {
  const ColoredText({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    print('ColoredText build');
    return ColoredBox(
      color: color,
      child: Text(
        text,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
