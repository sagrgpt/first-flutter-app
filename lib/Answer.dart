import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onClicked;
  final String _answerText;

  Answer(this._onClicked, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: _onClicked,
        child: Text(_answerText),
      ),
    );
  }
}
