import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases do Dia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FrasesDoDiaScreen(),
    );
  }
}

class FrasesDoDiaScreen extends StatefulWidget {
  @override
  _FrasesDoDiaScreenState createState() => _FrasesDoDiaScreenState();
}

class _FrasesDoDiaScreenState extends State<FrasesDoDiaScreen> {
  int _currentIndex = 0;
  List<String> _frases = [
    "A persistência é o caminho do êxito.",
    "O que não provoca minha morte faz com que eu fique mais forte.",
    "Pedras no caminho? Eu guardo todas. Um dia vou construir um castelo.",
    "O importante não é vencer todos os dias, mas lutar sempre.",
    "É melhor conquistar a si mesmo do que vencer mil batalhas."
  ];

  void _changeQuote() {
    setState(() {
      _currentIndex = Random().nextInt(_frases.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _frases[_currentIndex],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _changeQuote,
              child: Text('Nova Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
