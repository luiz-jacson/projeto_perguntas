import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      if (perguntaSelecionada < 1) {
        perguntaSelecionada++;
      }
    });
    print("Sua pergunta foi respondida!");
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o  seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: () => responder(),
              child: Text('Respostas 1'),
            ),
            ElevatedButton(
              onPressed: () => responder(),
              child: Text('Respostas 2'),
            ),
            ElevatedButton(
              onPressed: () => responder(),
              child: Text('Respostas 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
