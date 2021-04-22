import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final int score;
  final Function nextQuestion;
  Answer({
    @required this.answer,
    @required this.nextQuestion,
    @required this.score,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: nextQuestion,
        textColor: Colors.white,
        child: Text(answer),
      ),
    );
  }
}
