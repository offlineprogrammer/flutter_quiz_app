import 'package:flutter_quiz_app/common/utils/enums.dart';

import 'package:flutter_quiz_app/common/services/quiz_service.dart';
import 'package:flutter_quiz_app/features/quiz/models/quiz_question.dart';
import 'package:flutter_quiz_app/features/settings/models/quiz_category.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final quizRepositoryProvider = Provider<QuizRepository>((ref) {
  QuizService quizService = ref.watch(quizServiceProvider);
  return QuizRepository(quizService);
});

final quizQuestionsProvider = FutureProvider.autoDispose<List<QuizQuestion>?>(
    (ref) => ref.watch(quizRepositoryProvider).getQuestions());

final quizCategoriesProvider = FutureProvider.autoDispose<List<QuizCategory>?>(
    (ref) => ref.watch(quizRepositoryProvider).getCategories());

class QuizRepository {
  QuizRepository(this.quizService);
  final QuizService quizService;

  Future<List<QuizQuestion>?> getQuestions() async {
    return await quizService.getQuestions(
      numQuestions: 5,
      categoryId: 9,
      difficulty: Difficulty.any,
    );
  }

  Future<List<QuizCategory>?> getCategories() async {
    return await quizService.getCategories();
  }
}
