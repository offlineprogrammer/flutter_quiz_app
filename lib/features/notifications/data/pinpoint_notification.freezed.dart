// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pinpoint_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PinPointNotification {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get imageIconUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PinPointNotificationCopyWith<PinPointNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinPointNotificationCopyWith<$Res> {
  factory $PinPointNotificationCopyWith(PinPointNotification value,
          $Res Function(PinPointNotification) then) =
      _$PinPointNotificationCopyWithImpl<$Res, PinPointNotification>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? body,
      String? imageUrl,
      String? imageIconUrl});
}

/// @nodoc
class _$PinPointNotificationCopyWithImpl<$Res,
        $Val extends PinPointNotification>
    implements $PinPointNotificationCopyWith<$Res> {
  _$PinPointNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? imageUrl = freezed,
    Object? imageIconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageIconUrl: freezed == imageIconUrl
          ? _value.imageIconUrl
          : imageIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PinPointNotificationCopyWith<$Res>
    implements $PinPointNotificationCopyWith<$Res> {
  factory _$$_PinPointNotificationCopyWith(_$_PinPointNotification value,
          $Res Function(_$_PinPointNotification) then) =
      __$$_PinPointNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? body,
      String? imageUrl,
      String? imageIconUrl});
}

/// @nodoc
class __$$_PinPointNotificationCopyWithImpl<$Res>
    extends _$PinPointNotificationCopyWithImpl<$Res, _$_PinPointNotification>
    implements _$$_PinPointNotificationCopyWith<$Res> {
  __$$_PinPointNotificationCopyWithImpl(_$_PinPointNotification _value,
      $Res Function(_$_PinPointNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? imageUrl = freezed,
    Object? imageIconUrl = freezed,
  }) {
    return _then(_$_PinPointNotification(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageIconUrl: freezed == imageIconUrl
          ? _value.imageIconUrl
          : imageIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PinPointNotification implements _PinPointNotification {
  const _$_PinPointNotification(
      {required this.id,
      required this.title,
      required this.body,
      required this.imageUrl,
      required this.imageIconUrl});

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? imageUrl;
  @override
  final String? imageIconUrl;

  @override
  String toString() {
    return 'PinPointNotification(id: $id, title: $title, body: $body, imageUrl: $imageUrl, imageIconUrl: $imageIconUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PinPointNotification &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageIconUrl, imageIconUrl) ||
                other.imageIconUrl == imageIconUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, imageUrl, imageIconUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PinPointNotificationCopyWith<_$_PinPointNotification> get copyWith =>
      __$$_PinPointNotificationCopyWithImpl<_$_PinPointNotification>(
          this, _$identity);
}

abstract class _PinPointNotification implements PinPointNotification {
  const factory _PinPointNotification(
      {required final int id,
      required final String? title,
      required final String? body,
      required final String? imageUrl,
      required final String? imageIconUrl}) = _$_PinPointNotification;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get imageUrl;
  @override
  String? get imageIconUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PinPointNotificationCopyWith<_$_PinPointNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
