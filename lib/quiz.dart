import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function buttonClicked;
  final int index;

  Quiz(
      {@required this.questions,
      @required this.buttonClicked,
      @required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(
          questions[index]['question'],
        ),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answer: answer['text'],
            nextQuestion: () => buttonClicked(answer['score']),
            score: answer['score'],
          );
        }).toList()
      ],
    );
  }
}
