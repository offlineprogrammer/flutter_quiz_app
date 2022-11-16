import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/common/navigation/router.dart';

class TheQuizApp extends StatelessWidget {
  const TheQuizApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'The Quiz App',
      theme: ThemeData.dark().copyWith(
          // scaffoldBackgroundColor: constants.appBackground,
          ),
      // home: const QuizPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
