import 'package:flutter_quiz_app/features/settings/controllers/settings_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsControllerProvider =
    StateNotifierProvider<SettingsController, SettingsState>((ref) {
  return SettingsController();
});

class SettingsController extends StateNotifier<SettingsState> {
  SettingsController() : super(SettingsState.initial());

  void update(SettingsState settingsState) {
    state = state.copyWith(
      numQuestions: settingsState.numQuestions,
      difficulty: settingsState.difficulty,
      category: settingsState.category,
    );
  }

  void reset() {
    state = SettingsState.initial();
  }
}
