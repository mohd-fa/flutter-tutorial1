import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
      _questionIndex++;
    });
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
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
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, _answerQuestion)
              : Result(),
        ),
        theme: ThemeData(primarySwatch: Colors.amber));
  }
}
