import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/router.dart';
import 'package:flutter_story_app_concept/coffee_story.dart';
import 'package:flutter_story_app_concept/data/coffee_story.dart';
import 'package:flutter_story_app_concept/detail_page.dart';
import 'package:flutter_story_app_concept/presentations/home_page.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'customIcons.dart';
import 'data.dart';
import 'dart:math';

import 'data.dart';
import 'data.dart';

void main() => runApp( MyApp(),

    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Zen Checkin",

      theme: ThemeData(

      ),
      //initialRoute: RoutePaths.PreViewSelectServices,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      home: CoffeeStoryBoard(),
    );
  }
}
