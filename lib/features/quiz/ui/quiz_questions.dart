import 'package:flutter/material.dart';

import 'package:flutter_quiz_app/features/quiz/controllers/quiz_state.dart';
import 'package:flutter_quiz_app/features/quiz/models/quiz_question.dart';
import 'package:flutter_quiz_app/features/quiz/ui/quiz_answer.dart';

import 'package:html_unescape/html_unescape.dart';

class QuizQuestions extends StatelessWidget {
  const QuizQuestions({
    required this.pageController,
    required this.state,
    required this.questions,
    Key? key,
  }) : super(key: key);

  final PageController pageController;
  final QuizState state;
  final List<QuizQuestion> questions;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: questions.length,
      itemBuilder: (context, index) {
        final question = questions[index];
        final answers = question.answers!;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question ${index + 1} of ${questions.length}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 12.0),
              child: Text(
                HtmlUnescape().convert(question.question!),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Divider(
              color: Colors.grey[200],
              height: 32.0,
              thickness: 2.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            Column(
              children: answers
                  .map(
                    (e) => QuizAnswer(
                      answer: e,
                      isSelected: e == state.selectedAnswer,
                      isCorrect: e == question.correctAnswer,
                      isDisplayingAnswer: state.answered,
                      question: question,
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      },
    );
  }
}
