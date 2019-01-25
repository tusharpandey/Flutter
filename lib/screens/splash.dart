import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/landingpage.dart';
import 'package:flutter_app/utils/ImagesUrls.dart';

class Splash extends StatelessWidget {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
          builder: (context) => new SplashContent(),
        ),
        routes: <String, WidgetBuilder>{
          '/main': (BuildContext context) => new LandingPage()
        });
  }
}

class SplashContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashContentState();
  }
}

class SplashContentState extends State<SplashContent>
    with SingleTickerProviderStateMixin {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return new Image.asset(ImagesUrls.splashIcon,width: double.maxFinite , height: double.maxFinite,fit: BoxFit.fill,);
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  startTimeout() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, handleTimeout);
  }

  void handleTimeout() {
    Navigator.pushReplacementNamed(_context, "/main");
  }
}
