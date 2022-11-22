import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_quiz_app/common/utils/enums.dart';
import 'package:flutter_quiz_app/features/quiz/models/quiz_question.dart';
import 'package:flutter_quiz_app/features/settings/controllers/settings_controller.dart';
import 'package:flutter_quiz_app/features/settings/controllers/settings_state.dart';
import 'package:flutter_quiz_app/features/settings/models/quiz_category.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final quizServiceProvider = Provider<QuizService>((ref) {
  final service = QuizService(ref: ref);
  return service;
});

class QuizService {
  QuizService({
    required Ref ref,
  }) : settingsState = ref.watch(settingsControllerProvider);

  final SettingsState settingsState;

  Future<List<QuizQuestion>?> getQuestions() async {
    try {
      final queryParameters = {
        'type': 'multiple',
        'amount': settingsState.numQuestions.toString(),
        'category': settingsState.category.id.toString(),
      };

      if (settingsState.difficulty != Difficulty.any) {
        queryParameters.addAll(
          {
            'difficulty': describeEnum(settingsState.difficulty),
          },
        );
      }

      var url = Uri.https('opentdb.com', '/api.php', queryParameters);

      var response = await http.get(url);

      if (response.statusCode == 200) {
        var decodedResponse =
            jsonDecode(utf8.decode(response.bodyBytes)) as Map;
        final results =
            List<Map<String, dynamic>>.from(decodedResponse['results'] ?? []);
        if (results.isNotEmpty) {
          return results.map((e) => QuizQuestion.fromMap(e)).toList();
        }
      }
    } catch (err) {
      debugPrint(err.toString());
    }
    return [];
  }

  Future<List<QuizCategory>?> getCategories() async {
    try {
      var url = Uri.https('opentdb.com', '/api_category.php');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var decodedResponse =
            jsonDecode(utf8.decode(response.bodyBytes)) as Map;

        final results = List<Map<String, dynamic>>.from(
            decodedResponse['trivia_categories'] ?? []);
        if (results.isNotEmpty) {
          return results.map((e) => QuizCategory.fromJson(e)).toList();
        }
      }
    } catch (err) {
      debugPrint(err.toString());
    }
    return [];
  }
}
