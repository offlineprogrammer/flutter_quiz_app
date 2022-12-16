import 'package:flutter_quiz_app/features/quiz_sessions/services/quizSessions_datastore_services.dart';
import 'package:flutter_quiz_app/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quizSessionsRepositoryProvider = Provider<QuizSessionsRepository>((ref) {
  QuizSessionsDataStoreService quizSessionsDataStoreService =
      ref.read(quizSessionsDataStoreServiceProvider);
  return QuizSessionsRepository(quizSessionsDataStoreService);
});

class QuizSessionsRepository {
  QuizSessionsRepository(this.quizSessionsDataStoreService);

  final QuizSessionsDataStoreService quizSessionsDataStoreService;

  Future<List<QuizSession>> getQuizSessions() async {
    return await quizSessionsDataStoreService.getQuizSessions();
  }

  Future<void> add(QuizSession quizSession) async {
    await quizSessionsDataStoreService.addQuizSession(quizSession);
  }

  Future<List<QuizSession>> getQuizSessionsbyDate(DateTime sessionDate) async {
    return await quizSessionsDataStoreService
        .getQuizSessionsbyDate(sessionDate);
  }
}
