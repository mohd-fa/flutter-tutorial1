import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = [
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
  Map<String, String> resultMap = {};
  void _answerQuestion(String answerText) {
    resultMap[_questions[_questionIndex]['questionText'] as String] =
        answerText;
    // print(resultMap);
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Tutorial 1'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, _answerQuestion)
              : Result(resultMap),
        ),
        theme: ThemeData(primarySwatch: Colors.amber));
  }
}
