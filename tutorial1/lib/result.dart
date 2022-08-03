import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  Map<String, String> resultMap;

  Result(this.resultMap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Answers are:',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          Table(
            children: [
              ...(resultMap.entries.map((e) => TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(e.key),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        child: Text(':   ' + e.value),
                      )
                    ],
                  ))).toList()
            ],
          ),
        ],
      ),
    );
  }
}
