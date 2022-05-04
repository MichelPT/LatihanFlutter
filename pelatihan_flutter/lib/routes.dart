import 'package:flutter/material.dart';
import 'package:pelatihan_flutter/screens/homeScreen.dart';
import 'package:pelatihan_flutter/screens/loginScreen.dart';
import 'package:pelatihan_flutter/screens/registerScreen.dart';

class RouteGenerator {
 static Route<dynamic> generateRoute(RouteSettings settings) {
 switch (settings.name) {
 case '/homeScreen':
 return MaterialPageRoute(builder: (_) => HomeScreen());
 case '/registerScreen':
 return MaterialPageRoute(builder: (_) => registerScreen());
 case '/loginScreen':
 return MaterialPageRoute(builder: (_) => loginScreen());
 default:
 return _errorRoute();
 }
 }
 static Route<dynamic> _errorRoute() {
 return MaterialPageRoute(builder: (_) {
 return Scaffold(
      appBar: AppBar(title: Text("Error")),
      body: Center(child: Text('Error page')),
      );
 });
 }
}