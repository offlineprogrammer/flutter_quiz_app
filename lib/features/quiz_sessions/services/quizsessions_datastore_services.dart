import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quizSessionsDataStoreServiceProvider =
    Provider<QuizSessionsDataStoreService>((ref) {
  return QuizSessionsDataStoreService();
});

class QuizSessionsDataStoreService {
  QuizSessionsDataStoreService();

  Future<void> addQuizSession(QuizSession quizSession) async {
    try {
      await Amplify.DataStore.save(quizSession);
    } on Exception catch (error) {
      debugPrint(error.toString());
    }
  }

  Future<List<QuizSession>> getQuizSessions() async {
    return await Amplify.DataStore.query(QuizSession.classType);
  }

  Future<List<QuizSession>> getQuizSessionsbyDate(DateTime sessionDate) async {
    return await Amplify.DataStore.query(QuizSession.classType,
        where: QuizSession.SESSIONDATE.eq(TemporalDate(
            DateTime(sessionDate.year, sessionDate.month, sessionDate.day))),
        sortBy: [QuizSession.SESSIONDATE.ascending()]);
  }
}
