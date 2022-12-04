import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/common/navigation/router.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';

class TheQuizApp extends StatelessWidget {
  const TheQuizApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp.router(
        routerConfig: router,
        builder: Authenticator.builder(),
        title: 'The Quiz App',
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
