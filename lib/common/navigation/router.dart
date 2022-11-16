import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/common/navigation/routes.dart';
import 'package:flutter_quiz_app/features/quiz/ui/quiz_page.dart';
import 'package:flutter_quiz_app/features/settings/ui/settings_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        name: AppRoute.home.name,
        builder: (context, state) => const QuizPage()),
    GoRoute(
        path: '/settings',
        name: AppRoute.settings.name,
        builder: (context, state) => SettingsPage()),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(state.error.toString()),
    ),
  ),
);
