import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/presentations/home_page.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomePage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Hexcolor("#684C37"),
        ),
        child: Center(
          child: Image.asset("assets/logo1.png"),
        ),
      ),
    );
  }
}
