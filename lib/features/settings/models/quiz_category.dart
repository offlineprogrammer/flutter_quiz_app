import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_category.freezed.dart';
part 'quiz_category.g.dart';

@Freezed()
class QuizCategory with _$QuizCategory {
  const factory QuizCategory({
    required int id,
    required String name,
  }) = _QuizCategory;

  factory QuizCategory.fromJson(Map<String, dynamic> json) =>
      _$QuizCategoryFromJson(json);
}
