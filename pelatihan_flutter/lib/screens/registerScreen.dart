import 'package:flutter/material.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({ Key? key }) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20),
              child: Text("Register",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/images/Logo.png',
              height: 200,
              width: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
                labelText: 'Username',
              ),
            ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.email),
                labelText: 'Email',
              ),
            ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.key),
                labelText: 'Password'
              ),
            ),
            ),
            Container(
              padding: EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/loginScreen');
                },
                child: Text('Register'),
              )
              ),
          ]),
      ),
      );
  }
}