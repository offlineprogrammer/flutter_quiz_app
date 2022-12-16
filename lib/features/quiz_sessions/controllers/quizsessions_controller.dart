import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/features/quiz_sessions/data/quizsessions_repository.dart';

import 'package:flutter_quiz_app/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quizSessionsControllerMapProvider =
    FutureProvider.autoDispose<Map<DateTime, int>>((ref) {
  QuizSessionsRepository quizSessionsRepository =
      ref.read(quizSessionsRepositoryProvider);
  return QuizSessionsController(quizSessionsRepository).getQuizSessionsMap();
});

final quizSessionsControllerListProvider = FutureProvider.family
    .autoDispose<List<QuizSession>, DateTime>((ref, sessionDate) {
  QuizSessionsRepository quizSessionsRepository =
      ref.read(quizSessionsRepositoryProvider);
  return QuizSessionsController(quizSessionsRepository)
      .getQuizSessionsbyDate(sessionDate);
});

class QuizSessionsController {
  QuizSessionsController(this.quizSessionsRepository);

  final QuizSessionsRepository quizSessionsRepository;

  Future<Map<DateTime, int>> getQuizSessionsMap() async {
    final quizSessionslist = await quizSessionsRepository.getQuizSessions();
    final quizSessionsMap =
        quizSessionslist.groupListsBy((quizSession) => quizSession.sessionDate);

    var quizSessionsDataSet = <DateTime, int>{};

    quizSessionsMap.forEach((sessionDate, sessionsList) {
      quizSessionsDataSet[DateUtils.dateOnly(sessionDate.getDateTime())] =
          sessionsList.fold(
        0,
        (sessionsCount, quizSession) => sessionsCount + 1,
      );
    });

    return quizSessionsDataSet;
  }

  Future<List<QuizSession>> getQuizSessionsbyDate(DateTime sessionDate) async {
    return await quizSessionsRepository.getQuizSessionsbyDate(sessionDate);
  }

  Future<void> add(QuizSession quizSession) async {
    await quizSessionsRepository.add(quizSession);
  }
}
