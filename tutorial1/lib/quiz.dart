// ignore_for_file: invalid_required_positional_param

import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(@required this.questions, @required this.questionIndex,
      @required this.answerQuestion,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question((questions[questionIndex]['questionText'] as String)),
      ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
        return Answer(() => answerQuestion(answer), answer);
      }).toList()
    ]);
  }
}
.,wev 
