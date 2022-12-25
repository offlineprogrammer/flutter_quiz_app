import 'dart:developer';
import 'dart:io';
import 'package:flutter_quiz_app/features/notifications/data/pinpoint_notification.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:path_provider/path_provider.dart';

class NotificationsController {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  Future<void> initialize() async {
    await FirebaseMessaging.instance.getInitialMessage();
    await requestPermission();
    await getToken();
    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      messageHandler(event);
    });
  }

  Future<void> messageHandler(RemoteMessage message) async {
    PinPointNotification pinpointMessage =
        PinPointNotification.fromMap(message.data);

    FilePathAndroidBitmap? iconBitmap;
    StyleInformation notificationStyle =
        const DefaultStyleInformation(true, true);

    await setupNotificationPlugin();

    AndroidNotificationChannel channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description:
          'This channel is used for important notifications.', // description
      importance: Importance.high,
    );

    if (pinpointMessage.imageUrl != null &&
        pinpointMessage.imageUrl!.isNotEmpty) {
      String imagePath =
          await _downloadAndSaveFile(pinpointMessage.imageUrl!, 'bigPicture');

      notificationStyle = BigPictureStyleInformation(
          FilePathAndroidBitmap(imagePath),
          contentTitle: '<b>${pinpointMessage.title}</b>',
          htmlFormatContentTitle: true,
          summaryText: '${pinpointMessage.body}',
          htmlFormatSummaryText: true);
    }

    if (pinpointMessage.imageIconUrl != null &&
        pinpointMessage.imageIconUrl!.isNotEmpty) {
      String iconPath = await _downloadAndSaveFile(
          pinpointMessage.imageIconUrl!, 'largeIcon');

      iconBitmap = FilePathAndroidBitmap(iconPath);
    }

    await flutterLocalNotificationsPlugin.show(
        pinpointMessage.id,
        pinpointMessage.title,
        pinpointMessage.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id, // id
            channel.name, // title
            channelDescription: channel.description,
            importance: Importance.high,
            largeIcon: iconBitmap,
            styleInformation: notificationStyle,
          ),
        ));
  }

  Future<void> requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      messaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
  }

  Future<void> getToken() async {
    final token = await FirebaseMessaging.instance.getToken();
    log("Token value: $token");
  }

  Future<void> setupNotificationPlugin() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  Future<String> _downloadAndSaveFile(String url, String fileName) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final String filePath = '${directory.path}/$fileName';
    final http.Response response = await http.get(Uri.parse(url));
    final File file = File(filePath);
    await file.writeAsBytes(response.bodyBytes);
    return filePath;
  }
}
