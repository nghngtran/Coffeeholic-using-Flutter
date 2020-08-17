import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/router.dart';
import 'package:flutter_story_app_concept/presentations/splash_page.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
      ),
      //initialRoute: RoutePaths.PreViewSelectServices,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      home: SplashPage(),
    );
  }
}
