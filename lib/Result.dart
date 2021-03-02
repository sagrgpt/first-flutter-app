import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _score;
  final Function resetHandler;

  Result(this._score, this.resetHandler);

  String get resultPhrase {
    var resultText = "Voila, You did it.";
    if (_score <= 8)
      resultText = "Awesome, you are an amazing person.";
    else if (_score <= 10)
      resultText = "You're a strange person";
    else if (_score > 20) resultText = "You're a bad person";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              "Restart Quiz",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
