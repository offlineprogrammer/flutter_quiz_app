import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:flutter_quiz_app/common/navigation/routes.dart';
import 'package:flutter_quiz_app/features/quiz_sessions/controllers/quizsessions_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class QuizSessionCalendar extends ConsumerWidget {
  const QuizSessionCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Map<DateTime, int>> quizSessionsMap =
        ref.watch(quizSessionsControllerMapProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'The Quiz App',
        ),
        leading: IconButton(
          onPressed: () {
            context.goNamed(
              AppRoute.home.name,
            );
          },
          icon: const Icon(Icons.home),
        ),
      ),
      body: quizSessionsMap.when(
        data: (data) => Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Select a day to see the quiz sessions',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            HeatMapCalendar(
              defaultColor: Colors.white,
              flexible: true,
              colorMode: ColorMode.color,
              datasets: data,
              monthFontSize: 20,
              weekFontSize: 14,
              fontSize: 14,
              showColorTip: false,
              colorsets: const {
                1: Color.fromARGB(20, 2, 179, 8),
                3: Color.fromARGB(40, 2, 179, 8),
                5: Color.fromARGB(60, 2, 179, 8),
                7: Color.fromARGB(80, 2, 179, 8),
                9: Color.fromARGB(100, 2, 179, 8),
                12: Color.fromARGB(110, 2, 179, 8),
              },
              onClick: (value) {
                context.goNamed(
                  AppRoute.quizSessionList.name,
                  params: {'sessionDate': value.toString()},
                );
              },
            ),
          ],
        ),
        error: (e, st) => const Center(
          child: Text('Error'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
