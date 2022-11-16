import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_quiz_app/common/navigation/routes.dart';
import 'package:flutter_quiz_app/common/ui/the_quiz_button.dart';
import 'package:flutter_quiz_app/common/utils/enums.dart';
import 'package:flutter_quiz_app/common/data/quiz_repository.dart';
import 'package:flutter_quiz_app/common/ui/display_error.dart';
import 'package:flutter_quiz_app/features/settings/controllers/settings_controller.dart';
import 'package:flutter_quiz_app/features/settings/models/quiz_category.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  SettingsPage({
    super.key,
  });

  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(quizCategoriesProvider);

    QuizCategory category;
    Difficulty difficulty;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          margin: const EdgeInsets.only(left: 8),
          child: const Text(
            'The Quiz App',
          ),
        ),
      ),
      body: categories.when(
        data: (data) {
          final settingsState = ref.watch(settingsControllerProvider);
          category = settingsState.category;
          final numQuestionsController = useTextEditingController(
              text: settingsState.numQuestions.toString());
          difficulty = settingsState.difficulty;

          return SingleChildScrollView(
            child: Form(
              key: formGlobalKey,
              child: Container(
                padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                    bottom: MediaQuery.of(context).viewInsets.bottom + 15),
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField<QuizCategory>(
                      onChanged: (value) {
                        category = value!;
                      },
                      value: category,
                      decoration: const InputDecoration(
                        labelText: 'Category',
                      ),
                      isExpanded: true,
                      items: [
                        for (var category in data!)
                          DropdownMenuItem(
                            value: category,
                            child: Text(
                              category.name,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField<Difficulty>(
                      style: const TextStyle(fontSize: 18),
                      onChanged: (value) {
                        difficulty = value!;
                      },
                      value: difficulty,
                      decoration: const InputDecoration(
                        labelText: 'Difficulty',
                      ),
                      items: [
                        for (var difficulty in Difficulty.values)
                          DropdownMenuItem(
                            value: difficulty,
                            child: Text(difficulty.name),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: const TextStyle(fontSize: 18),
                      controller: numQuestionsController,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        const validationError = 'Enter a valid number';
                        if (value == null ||
                            value.isEmpty ||
                            int.tryParse(value) == null) {
                          return validationError;
                        }

                        return null;
                      },
                      autocorrect: false,
                      decoration: const InputDecoration(
                        hintText: 'Enter a number',
                        labelText: 'Number of questions',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TheQuizButton(
                        title: 'Save',
                        onPressed: () async {
                          final currentState = formGlobalKey.currentState;
                          if (currentState == null) {
                            return;
                          }
                          if (currentState.validate()) {
                            final updatedSettings = settingsState.copyWith(
                              category: category,
                              difficulty: difficulty,
                              numQuestions:
                                  int.parse(numQuestionsController.text),
                            );

                            ref
                                .read(settingsControllerProvider.notifier)
                                .update(updatedSettings);

                            context.goNamed(
                              AppRoute.home.name,
                            );
                          }
                        } //,,
                        )
                  ],
                ),
              ),
            ),
          );
        },
        error: (e, st) => const DisplayError(),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
