import 'package:flutter/material.dart';
import 'package:flutter_project/models/users.dart';


class registerScreen extends StatefulWidget {
  registerScreen({ Key? key }) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Padding(
          padding: EdgeInsets.all(34.0),
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: const Text("Register",
                  style: TextStyle(
                    color: Color(0xff2D3E4F),
                    fontWeight: FontWeight.w800,
                    fontSize: 30
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text("Please fill in the form to begin creating your account",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14
                ),
              ),
       
              const SizedBox(height: 20),

              Container(
                  width: 140,
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold
                      )
                    ),
                    ),
                ),    
              const SizedBox(height: 10),
              Container(
                        width: 140,
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                            fontWeight: FontWeight.bold
                      )
                    ),
                        ),
                      ),
              const SizedBox(height: 10),
              Container(
                        width: 140,
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                           labelText: 'Password',
                           labelStyle: TextStyle(
                           fontWeight: FontWeight.bold
                      )
                    ),
                        ),
                      ),
              const SizedBox(height: 10),
              Container(
                        width: 140,
                        child: TextField(
                          controller: _passwordConfirmController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password Confirmation',
                            labelStyle: TextStyle(
                            fontWeight: FontWeight.bold
                      )
                    ),
                        ),
                      ),
              const SizedBox(height: 10),

              SizedBox(height: 30),
              Container(
                     child: ElevatedButton(
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size.fromWidth(300)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(19),
                          )
                        )
                      ),
                      onPressed:() {
                        bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(_emailController.text);
                        String text = "";
                        if (_usernameController.text.isEmpty||_passwordController.text.isEmpty||_emailController.text.isEmpty||_passwordConfirmController.text.isEmpty) {
                          text = "Please input your username, email, and password";
                        } else if (_passwordController.text!=_passwordConfirmController.text) {
                          text = "The password confirmation is wrong";
                        } else if (!emailValid){
                          text = "Wrong email format";
                          }
                        else {
                          Navigator.popAndPushNamed(context, '/loginScreen',);
                        }
                        SnackBar snackBar = SnackBar(
                        content: Text(text));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    child: Text('Register'),
                    ),
                   )
            ],
          )
             ),
       ),
    );
  }
}