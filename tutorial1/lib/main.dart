import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Where are you from?',
        'answer': ['India', 'oman', 'egypt', 'uae']
      },
      {
        'questionText': 'Whats your favorite color?',
        'answer': ['Red', 'Yellow', 'Orange', 'Blue', 'Black']
      },
      {
        'questionText': 'Whats your favorite meal?',
        'answer': ['chicken', 'fish', 'beef', 'mutton']
      }
    ];
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Tutorial 1'),
          ),
          body: Column(children: [
            Question((questions[_questionIndex]['questionText'] as String)),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ]),
        ),
        theme: ThemeData(primarySwatch: Colors.amber));
  }
}
