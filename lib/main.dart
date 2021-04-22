import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int score = 0;
  final questions = const <Map<String, Object>>[
    {
      'question': 'What\'s your favourite color',
      'answers': [
        {'text': 'Red', 'score': 2},
        {'text': 'Black', 'score': 3},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 7}
      ]
    },
    {
      'question': 'What\'s your favourite food',
      'answers': [
        {'text': 'burger', 'score': 2},
        {'text': 'pizza', 'score': 3},
        {'text': 'oats', 'score': 5},
        {'text': 'chicken', 'score': 7}
      ]
    },
    {
      'question': 'What\'s your favourite place',
      'answers': [
        {'text': 'Delhi', 'score': 2},
        {'text': 'Mumbai', 'score': 3},
        {'text': 'Chandigarh', 'score': 5},
        {'text': 'Mandi', 'score': 7}
      ]
    },
  ];
  var index = 0;
  void _buttonClicked(int score) {
    this.score += score;
    setState(() {
      index += 1;
    });
  }

  void restartQuiz() {
    this.setState(() {
      index = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ"),
        ),
        body: index < questions.length
            ? Quiz(
                questions: questions,
                buttonClicked: _buttonClicked,
                index: index,
              )
            : Result(score, restartQuiz),
      ),
    );
  }
}
