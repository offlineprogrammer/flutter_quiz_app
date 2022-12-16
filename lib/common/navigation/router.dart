import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/common/navigation/routes.dart';

import 'package:flutter_quiz_app/features/quiz/ui/quiz_page.dart';
import 'package:flutter_quiz_app/features/quiz_sessions/ui/quiz_sessions_calendar/quiz_sessions_calendar.dart';
import 'package:flutter_quiz_app/features/quiz_sessions/ui/quiz_sessions_list/quiz_sessions_list.dart';
import 'package:flutter_quiz_app/features/settings/ui/settings_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const QuizPage(),
    ),
    GoRoute(
      path: '/settings',
      name: AppRoute.settings.name,
      builder: (context, state) => SettingsPage(),
    ),
    GoRoute(
      path: '/quizSessionsMap',
      name: AppRoute.quizSessionCalendar.name,
      builder: (context, state) => const QuizSessionCalendar(),
    ),
    GoRoute(
      path: '/quizSessionsList/:sessionDate',
      name: AppRoute.quizSessionList.name,
      builder: (context, state) {
        return QuizSessionList(
          sessionDate: DateTime.parse(state.params['sessionDate']!),
        );
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(state.error.toString()),
    ),
  ),
);
