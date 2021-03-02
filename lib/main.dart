import 'package:first_app/Quiz.dart';
import 'package:first_app/Result.dart';
import 'package:flutter/material.dart';

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
  final _questionnaire = const [
    {
      "question": "What's your favourite color?",
      "answers": [
        {"text": "Red", "score": 6},
        {"text": "Green", "score": 1},
        {"text": "Blue", "score": 4},
        {"text": "Black", "score": 10},
      ],
    },
    {
      "question": "What's your favourite animal?",
      "answers": [
        {"text": "Horse", "score": 6},
        {"text": "Rabbit", "score": 1},
        {"text": "Lion", "score": 4},
        {"text": "Tiger", "score": 10},
      ],
    },
    {
      "question": "What's your favourite OTT?",
      "answers": [
        {"text": "Netflix", "score": 6},
        {"text": "Amazon Prime", "score": 1},
        {"text": "Disney+", "score": 4},
        {"text": "Zee", "score": 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sample App"),
        ),
        body: _questionIndex < _questionnaire.length
            ? Quiz(
                _questionnaire[_questionIndex],
                _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
