import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_question.freezed.dart';

@Freezed()
class QuizQuestion with _$QuizQuestion {
  const factory QuizQuestion({
    required String? category,
    required String? difficulty,
    required String? type,
    required String? question,
    @JsonKey(name: 'correct_answer') required String? correctAnswer,
    @JsonKey(name: 'incorrect_answers') required List<String>? incorrectAnswer,
    required List<String>? answers,
  }) = _QuizQuestion;

  factory QuizQuestion.fromMap(Map<String, dynamic> map) {
    return QuizQuestion(
      category: map['category'] ?? '',
      difficulty: map['difficulty'] ?? '',
      question: map['question'] ?? '',
      type: map['type'] ?? '',
      correctAnswer: map['correct_answer'] ?? '',
      incorrectAnswer: map['incorrect_answers'].cast<String>() ?? [],
      answers: List<String>.from(map['incorrect_answers'].cast<String>() ?? [])
        ..add(map['correct_answer'] ?? '')
        ..shuffle(),
    );
  }
}
