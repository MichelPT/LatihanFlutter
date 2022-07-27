import 'package:flutter/material.dart';
import 'package:flutter_project/models/users.dart';

class homeScreen extends StatefulWidget {
  final String user;

  const homeScreen({ Key? key, required this.user }) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello, ${widget.user}. These are your notes")),
      body: 
          ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, position) {
            return Card(
              child: SingleChildScrollView(child:Padding( 
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                  ),
                  style: const TextStyle(fontSize: 22.0),
                )
              ), 
              )
            );
          },
          ),
      );
  }
}