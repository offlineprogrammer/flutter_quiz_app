import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/the_quiz_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: TheQuizApp(),
    ),
  );
}
