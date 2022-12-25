import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/the_quiz_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'amplifyconfiguration.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter_quiz_app/models/ModelProvider.dart';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_quiz_app/features/notifications/controllers/notifications_controller.dart';

NotificationsController notificationController = NotificationsController();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await _configureAmplify();
    await _configureFirebase();
  } on AmplifyAlreadyConfiguredException {
    debugPrint('Amplify configuration failed.');
  }

  runApp(
    const ProviderScope(
      child: TheQuizApp(),
    ),
  );
}

Future<void> _configureAmplify() async {
  await Amplify.addPlugins([
    AmplifyAuthCognito(),
    AmplifyDataStore(modelProvider: ModelProvider.instance),
    AmplifyAPI(),
    AmplifyAnalyticsPinpoint(),
  ]);
  await Amplify.configure(amplifyconfig);
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  notificationController = NotificationsController();
  await notificationController.messageHandler(message);
}

Future<void> _configureFirebase() async {
  await Firebase.initializeApp();
  await notificationController.initialize();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}
