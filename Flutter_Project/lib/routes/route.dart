import 'package:flutter/material.dart';
import 'package:flutter_project/models/users.dart';
import 'package:flutter_project/pages/firstScreen.dart';
import 'package:flutter_project/pages/homeScreen.dart';
import 'package:flutter_project/pages/loginScreen.dart';
import 'package:flutter_project/pages/registerScreen.dart';

class RouteGenerator {
 static Route<dynamic> generateRoute(RouteSettings settings) {
 switch (settings.name) {
 case '/firstScreen':
 return MaterialPageRoute(builder: (_) => firstScreen());
 case '/loginScreen':
 return MaterialPageRoute(builder: (_) => loginScreen());
 case '/registerScreen':
 return MaterialPageRoute(builder: (_) => registerScreen());
 case '/homeScreen':
  final args = settings.arguments as Users;
 return MaterialPageRoute(builder: (_) => homeScreen(user:args.username));
 default:
 return _errorRoute();
 }
 }
 static Route<dynamic> _errorRoute() {
 return MaterialPageRoute(builder: (_) {
 return Scaffold(
      appBar: AppBar(title: Text("Error")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text('Error Page',
            style: TextStyle(fontSize: 30),),
          ),
          Center(
            child: Image.asset('assets/images/error.png',
            width: 500,
            ),
          ),
          Center(
            child: Text('Please try again later'),
          )
        ],
      ),
      );
 });
 }
}