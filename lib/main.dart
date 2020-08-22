import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/application/router.dart';
import 'package:flutter_story_app_concept/presentations/splash_page.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      initialRoute: RoutePaths.SplashScreen,
    );
  }
}
