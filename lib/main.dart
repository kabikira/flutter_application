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
  Stream<List<String>> _myWatchEntries() async* {
    final List<String> datas = [];
    for (int i = 1; i <= 10; i++) {
      datas.add("データ:$i");
      await Future.delayed(const Duration(seconds: 1));
      yield datas;
    }
  }

  @override
  Widget build(BuildContext context) {
    final list = StreamBuilder(
      stream: _myWatchEntries(),
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        final List<String> datas = snapshot.data ?? [];

        return ListView.builder(
          itemCount: datas.length,
          itemBuilder: (c, i) => Text(datas[i]),
        );
      },
    );
    return Scaffold(body: list);
  }
}
