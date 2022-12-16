import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/common/data/quiz_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DisplayError extends ConsumerWidget {
  const DisplayError({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Error',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () async {
              ref.invalidate(quizQuestionsProvider);
            },
            child: const Text('Try again'),
          ),
        ],
      ),
    );
  }
}
