import 'package:CarsMarket/pages/detail/detail.dart';
import 'package:CarsMarket/pages/register/register_view.dart';
import 'package:CarsMarket/pages/login/login_view.dart';
import 'package:CarsMarket/pages/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:CarsMarket/pages/home/home_view.dart';

void main() => runApp(Carsmarket());

class Carsmarket extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cars Market',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Lato"
      ),
      home: SplashView(),
      routes: <String, WidgetBuilder>{
        '/HomeView': (BuildContext context) => new HomeView(),
        '/LoginView' : (BuildContext context) => new LoginView(),
        '/RegisterView': (BuildContext context) => new RegisterView(),
        '/DetailView': (BuildContext context) => new DetailView("Sample"),
      },
    );
  }
}