import 'dart:async';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget{
  @override
  _SplashViewState createState() => new _SplashViewState();
}

class _SplashViewState extends State<SplashView>{
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/HomeView');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Image.asset(
        'images/Splash.png',
        fit: BoxFit.cover,
    );
  }
}