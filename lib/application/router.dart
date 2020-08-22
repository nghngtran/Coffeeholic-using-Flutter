import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/coffee_story.dart';
import 'package:flutter_story_app_concept/presentations/home_page.dart';
import 'package:flutter_story_app_concept/presentations/news.dart';
import 'package:flutter_story_app_concept/presentations/splash_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.SplashScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashPage());
      case RoutePaths.Home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomePage());
      case RoutePaths.CoffeeStory:
        return MaterialPageRoute(
            builder: (BuildContext context) => CoffeeStoryBoard());
      case RoutePaths.Feed:
        return MaterialPageRoute(
            builder: (BuildContext context) => NewFeed());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));

    }
  }
}