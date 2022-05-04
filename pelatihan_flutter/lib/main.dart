import 'package:flutter/material.dart';
import 'package:pelatihan_flutter/routes.dart';
import 'package:pelatihan_flutter/screens/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      home:loginScreen(),
    );
  }
}
