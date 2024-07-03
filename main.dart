import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        backgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora'),
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
  int _result = 0;
  final int _valor1 = 0;
  final int _valor2 = 0;

  void _somarValores() {
    setState(() {
      _result = _valor1 + _valor2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Center(
          child: Column(
        children: [
          TextFormField(
            key: Key('result'),
            decoration: InputDecoration(labelText: '0'),
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
          ),
          Row(children: [
            ElevatedButton(onPressed: () {}, child: const Text('CE')),
            ElevatedButton(onPressed: () {}, child: const Text('C')),
            ElevatedButton(onPressed: () {}, child: const Text('+/-')),
            ElevatedButton(onPressed: () {}, child: const Text('/')),
          ]),
          Row(children: [
            ElevatedButton(onPressed: () {}, child: const Text('7')),
            ElevatedButton(onPressed: () {}, child: const Text('8')),
            ElevatedButton(onPressed: () {}, child: const Text('9')),
            ElevatedButton(onPressed: () {}, child: const Text('X')),
          ]),
          Row(children: [
            ElevatedButton(onPressed: () {}, child: const Text('4')),
            ElevatedButton(onPressed: () {}, child: const Text('5')),
            ElevatedButton(onPressed: () {}, child: const Text('6')),
            ElevatedButton(onPressed: () {}, child: const Text('-')),
          ]),
          Row(children: [
            ElevatedButton(onPressed: () {}, child: const Text('1')),
            ElevatedButton(onPressed: () {}, child: const Text('2')),
            ElevatedButton(onPressed: () {}, child: const Text('3')),
            ElevatedButton(onPressed: () {}, child: const Text('+')),
          ]),
          Row(children: [
            ElevatedButton(onPressed: () {}, child: const Text('0')),
            ElevatedButton(
                onPressed: () {
                  _somarValores() {}
                },
                child: const Text('=')),
          ]),
        ],
      )),
    );
  }
}
