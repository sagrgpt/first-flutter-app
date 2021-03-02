import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Question.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> _questionnaire;
  final Function _onAnswerSelected;

  Quiz(
    this._questionnaire,
    this._onAnswerSelected,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          _questionnaire["question"],
        ),
        ...(_questionnaire["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => _onAnswerSelected(answer["score"]),
            answer["text"],
          );
        }),
      ],
    );
  }
}
