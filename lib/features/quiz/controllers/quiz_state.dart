import 'package:flutter_quiz_app/common/utils/enums.dart';
import 'package:flutter_quiz_app/features/quiz/models/quiz_question.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class QuizState {
  final String selectedAnswer;
  final List<QuizQuestion> correct;
  final List<QuizQuestion> incorrect;
  final QuizStatus status;

  bool get answered =>
      status == QuizStatus.incorrect || status == QuizStatus.correct;

  const QuizState({
    required this.selectedAnswer,
    required this.correct,
    required this.incorrect,
    required this.status,
  });

  factory QuizState.initial() {
    return const QuizState(
      selectedAnswer: '',
      correct: [],
      incorrect: [],
      status: QuizStatus.initial,
    );
  }

  QuizState copyWith({
    String? selectedAnswer,
    List<QuizQuestion>? correct,
    List<QuizQuestion>? incorrect,
    QuizStatus? status,
  }) {
    return QuizState(
      selectedAnswer: selectedAnswer ?? this.selectedAnswer,
      correct: correct ?? this.correct,
      incorrect: incorrect ?? this.incorrect,
      status: status ?? this.status,
    );
  }
}
