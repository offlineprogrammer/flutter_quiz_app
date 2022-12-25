import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinpoint_notification.freezed.dart';

@Freezed()
class PinPointNotification with _$PinPointNotification {
  const factory PinPointNotification({
    required int id,
    required String? title,
    required String? body,
    required String? imageUrl,
    required String? imageIconUrl,
  }) = _PinPointNotification;

  factory PinPointNotification.fromMap(Map<String, dynamic> map) {
    return PinPointNotification(
      id: map['pinpoint.notification.campaign_id'].hashCode,
      title: map['pinpoint.notification.title'] ?? '',
      body: map['pinpoint.notification.body'] ?? '',
      imageUrl: map['pinpoint.notification.imageUrl'] ?? '',
      imageIconUrl: map['pinpoint.notification.imageIconUrl'] ?? '',
    );
  }
}
