import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/common/navigation/routes.dart';
import 'package:flutter_quiz_app/features/quiz_sessions/controllers/quizsessions_controller.dart';
import 'package:flutter_quiz_app/features/quiz_sessions/ui/quiz_sessions_list/quiz_sessions_item.dart';
import 'package:flutter_quiz_app/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class QuizSessionList extends ConsumerWidget {
  const QuizSessionList({
    required this.sessionDate,
    super.key,
  });

  final DateTime sessionDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<QuizSession>> quizSessionsList =
        ref.watch(quizSessionsControllerListProvider(sessionDate));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DateFormat('MMMM dd, yyyy').format(sessionDate),
        ),
        leading: IconButton(
          onPressed: () {
            context.goNamed(
              AppRoute.quizSessionCalendar.name,
            );
          },
          icon: const Icon(Icons.calendar_month),
        ),
      ),
      body: quizSessionsList.when(
        data: (data) {
          return data.isNotEmpty
              ? ListView.separated(
                  itemCount: data.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return QuizSessionItem(
                      quizSession: data[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                )
              : const Center(
                  child: Text('No Sessions'),
                );
        },
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
