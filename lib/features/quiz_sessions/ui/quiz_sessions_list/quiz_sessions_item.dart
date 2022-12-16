import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/models/ModelProvider.dart';

class QuizSessionItem extends StatelessWidget {
  const QuizSessionItem({
    required this.quizSession,
    super.key,
  });

  final QuizSession quizSession;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.amberAccent[700],
        child: Text(
          quizSession.sessionScore.toString(),
        ),
      ),
      title: Text('Category: ${quizSession.sessionCategory.toString()} '),
      subtitle:
          Text('Difficulty: ${quizSession.sessionDifficulty.toString()} '),
    );
  }
}
