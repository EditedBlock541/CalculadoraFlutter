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

TextEditingController _textEditingController = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  double _result = 0;
  double _valor1 = 0;
  double _valor2 = 0;
  String _salvecria = '0';
  String _operacao = '';

  double qualOp(String _op) {
    if (_op == '+') {
      _result = _valor1 + _valor2;
      return _result;
    }
    if (_op == '-') {
      _result = _valor1 - _valor2;
      return _result;
    }
    if (_op == '*') {
      _result = _valor1 * _valor2;
      return _result;
    }
    if (_op == '/') {
      _result = _valor1 / _valor2;
      return _result;
    }
    return -1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _textEditingController,
            key: const Key('result'),
            decoration: InputDecoration(labelText: _salvecria),
            readOnly: true,
            enableInteractiveSelection: false,
          ),
          Row(children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _salvecria = '0';
                    _valor1 = 0;
                    _valor2 = 0;
                    _operacao = '';
                  });
                },
                child: const Text('CE')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _salvecria = '0';
                    _valor1 = 0;
                    _valor2 = 0;
                    _operacao = '';
                  });
                },
                child: const Text('C')),
            ElevatedButton(onPressed: () {}, child: const Text('+/-')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _valor1 = _valor2;
                    _valor2 = 0;
                    _salvecria = '0';
                    _operacao = '/';
                  });
                },
                child: const Text('/')),
          ]),
          Row(children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '7';
                    } else {
                      _salvecria = _salvecria + '7';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('7')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '8';
                    } else {
                      _salvecria = _salvecria + '8';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('8')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '9';
                    } else {
                      _salvecria = _salvecria + '9';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('9')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _valor1 = _valor2;
                    _valor2 = 0;
                    _salvecria = '0';
                    _operacao = '*';
                  });
                },
                child: const Text('*')),
          ]),
          Row(children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '4';
                    } else {
                      _salvecria = _salvecria + '4';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('4')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '5';
                    } else {
                      _salvecria = _salvecria + '5';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('5')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '6';
                    } else {
                      _salvecria = _salvecria + '6';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('6')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _valor1 = _valor2;
                    _valor2 = 0;
                    _salvecria = '0';
                    _operacao = '-';
                  });
                },
                child: const Text('-')),
          ]),
          Row(children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '1';
                    } else {
                      _salvecria = _salvecria + '1';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('1')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '2';
                    } else {
                      _salvecria = _salvecria + '2';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('2')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '3';
                    } else {
                      _salvecria = _salvecria + '3';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('3')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _valor1 = _valor2;
                    _valor2 = 0;
                    _salvecria = '0';
                    _operacao = '+';
                  });
                },
                child: const Text('+')),
          ]),
          Row(children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                    } else {
                      _salvecria = _salvecria + '0';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('0')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_salvecria == '0') {
                      _salvecria = '0.';
                    } else {
                      _salvecria = _salvecria + '.';
                    }
                  });
                  _valor2 = double.parse(_salvecria);
                },
                child: const Text('.')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_valor2 == 0 && _operacao == '/') {
                    } else {
                      _salvecria = qualOp(_operacao).toString();
                      _valor2 = qualOp(_operacao);
                    }
                  });
                },
                child: const Text('=')),
          ]),
        ],
      )),
    );
  }
}
