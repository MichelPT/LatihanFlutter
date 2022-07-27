import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var name = "damn good".obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX Testing",
      home: Scaffold(
        appBar: AppBar(title: Text("GetX")),
        body: ListView(
          children: [
            Obx(() => Text("hehe"))
          ],
        ),
      ),
    );
  }
}