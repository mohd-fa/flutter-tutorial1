import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    print('answer 1 chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What is your name?', 'Where are you from?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial 1'),
        ),
        body: Column(
          children: [
            const Text('The questions:'),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(
                onPressed: () => print('answer 2 chosen'),
                child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  print('answer 3 chosen');
                },
                child: Text('Answer 3'))
          ],
        ),
      ),
    );
  }
}
