import 'package:flutter_quiz_app/common/utils/enums.dart';

import 'package:flutter_quiz_app/features/quiz/controllers/quiz_state.dart';
import 'package:flutter_quiz_app/features/quiz/models/quiz_question.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quizControllerProvider =
    StateNotifierProvider.autoDispose<QuizController, QuizState>((ref) {
  return QuizController();
});

class QuizController extends StateNotifier<QuizState> {
  QuizController() : super(QuizState.initial());

  void answer(QuizQuestion currentQuestion, String answer) {
    if (state.answered) return;

    if (currentQuestion.correctAnswer == answer) {
      state = state.copyWith(
        selectedAnswer: answer,
        correct: List.from(state.correct)..add(currentQuestion),
        status: QuizStatus.correct,
      );
    } else {
      state = state.copyWith(
        selectedAnswer: answer,
        incorrect: List.from(state.incorrect)..add(currentQuestion),
        status: QuizStatus.incorrect,
      );
    }
  }

  void next(List<QuizQuestion> questions, int currentIndex) {
    state = state.copyWith(
      selectedAnswer: '',
      status: currentIndex + 1 < questions.length
          ? QuizStatus.initial
          : QuizStatus.complete,
    );
  }

  void reset() {
    state = QuizState.initial();
  }
}
