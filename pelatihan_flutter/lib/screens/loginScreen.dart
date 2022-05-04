import 'package:flutter/material.dart';
import 'package:pelatihan_flutter/screens/homeScreen.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({ Key? key }) : super(key: key);

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
              child: Text("Login",
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
                icon: Icon(Icons.key),
                labelText: 'Password'
              ),
            ),
            ),
            Container(
              padding: EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/homeScreen');
                },
                child: Text('Login'),
              )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Do not have an account yet?'),
                  TextButton(
                    onPressed:() {
                    Navigator.pushNamed(context, '/registerScreen');
                  },
                  child: Text('Register'),
                  )
                ],
                ),
          ]
      )
      )
    );
  }
}