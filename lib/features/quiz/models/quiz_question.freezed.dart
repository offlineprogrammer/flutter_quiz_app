// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quiz_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizQuestion {
  String? get category => throw _privateConstructorUsedError;
  String? get difficulty => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answer')
  String? get correctAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'incorrect_answers')
  List<String>? get incorrectAnswer => throw _privateConstructorUsedError;
  List<String>? get answers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizQuestionCopyWith<QuizQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionCopyWith<$Res> {
  factory $QuizQuestionCopyWith(
          QuizQuestion value, $Res Function(QuizQuestion) then) =
      _$QuizQuestionCopyWithImpl<$Res, QuizQuestion>;
  @useResult
  $Res call(
      {String? category,
      String? difficulty,
      String? type,
      String? question,
      @JsonKey(name: 'correct_answer') String? correctAnswer,
      @JsonKey(name: 'incorrect_answers') List<String>? incorrectAnswer,
      List<String>? answers});
}

/// @nodoc
class _$QuizQuestionCopyWithImpl<$Res, $Val extends QuizQuestion>
    implements $QuizQuestionCopyWith<$Res> {
  _$QuizQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? difficulty = freezed,
    Object? type = freezed,
    Object? question = freezed,
    Object? correctAnswer = freezed,
    Object? incorrectAnswer = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      incorrectAnswer: freezed == incorrectAnswer
          ? _value.incorrectAnswer
          : incorrectAnswer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizQuestionCopyWith<$Res>
    implements $QuizQuestionCopyWith<$Res> {
  factory _$$_QuizQuestionCopyWith(
          _$_QuizQuestion value, $Res Function(_$_QuizQuestion) then) =
      __$$_QuizQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? category,
      String? difficulty,
      String? type,
      String? question,
      @JsonKey(name: 'correct_answer') String? correctAnswer,
      @JsonKey(name: 'incorrect_answers') List<String>? incorrectAnswer,
      List<String>? answers});
}

/// @nodoc
class __$$_QuizQuestionCopyWithImpl<$Res>
    extends _$QuizQuestionCopyWithImpl<$Res, _$_QuizQuestion>
    implements _$$_QuizQuestionCopyWith<$Res> {
  __$$_QuizQuestionCopyWithImpl(
      _$_QuizQuestion _value, $Res Function(_$_QuizQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? difficulty = freezed,
    Object? type = freezed,
    Object? question = freezed,
    Object? correctAnswer = freezed,
    Object? incorrectAnswer = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$_QuizQuestion(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      incorrectAnswer: freezed == incorrectAnswer
          ? _value._incorrectAnswer
          : incorrectAnswer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_QuizQuestion implements _QuizQuestion {
  const _$_QuizQuestion(
      {required this.category,
      required this.difficulty,
      required this.type,
      required this.question,
      @JsonKey(name: 'correct_answer')
          required this.correctAnswer,
      @JsonKey(name: 'incorrect_answers')
          required final List<String>? incorrectAnswer,
      required final List<String>? answers})
      : _incorrectAnswer = incorrectAnswer,
        _answers = answers;

  @override
  final String? category;
  @override
  final String? difficulty;
  @override
  final String? type;
  @override
  final String? question;
  @override
  @JsonKey(name: 'correct_answer')
  final String? correctAnswer;
  final List<String>? _incorrectAnswer;
  @override
  @JsonKey(name: 'incorrect_answers')
  List<String>? get incorrectAnswer {
    final value = _incorrectAnswer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _answers;
  @override
  List<String>? get answers {
    final value = _answers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizQuestion(category: $category, difficulty: $difficulty, type: $type, question: $question, correctAnswer: $correctAnswer, incorrectAnswer: $incorrectAnswer, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizQuestion &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            const DeepCollectionEquality()
                .equals(other._incorrectAnswer, _incorrectAnswer) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      category,
      difficulty,
      type,
      question,
      correctAnswer,
      const DeepCollectionEquality().hash(_incorrectAnswer),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizQuestionCopyWith<_$_QuizQuestion> get copyWith =>
      __$$_QuizQuestionCopyWithImpl<_$_QuizQuestion>(this, _$identity);
}

abstract class _QuizQuestion implements QuizQuestion {
  const factory _QuizQuestion(
      {required final String? category,
      required final String? difficulty,
      required final String? type,
      required final String? question,
      @JsonKey(name: 'correct_answer')
          required final String? correctAnswer,
      @JsonKey(name: 'incorrect_answers')
          required final List<String>? incorrectAnswer,
      required final List<String>? answers}) = _$_QuizQuestion;

  @override
  String? get category;
  @override
  String? get difficulty;
  @override
  String? get type;
  @override
  String? get question;
  @override
  @JsonKey(name: 'correct_answer')
  String? get correctAnswer;
  @override
  @JsonKey(name: 'incorrect_answers')
  List<String>? get incorrectAnswer;
  @override
  List<String>? get answers;
  @override
  @JsonKey(ignore: true)
  _$$_QuizQuestionCopyWith<_$_QuizQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
