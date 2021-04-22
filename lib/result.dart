import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function restartQuiz;

  Result(this.score, this.restartQuiz);

  String get resultPhrase {
    String resultText = 'You are a Pig';
    if (score >= 15) {
      resultText = 'You are awsome!!';
    } else if (score <= 15 && score >= 10) {
      resultText = 'You are a nice guy!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
            padding: EdgeInsets.all(10),
            color: Colors.red,
            onPressed: restartQuiz,
            child: Text(
              "Restart Quiz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ))
      ],
    );
  }
}
