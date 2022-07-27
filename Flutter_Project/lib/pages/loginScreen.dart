import 'package:flutter/material.dart';
import 'package:flutter_project/models/users.dart';
import 'package:google_fonts/google_fonts.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({ Key? key }) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}


class _loginScreenState extends State<loginScreen> {
  late final TextEditingController _usernameController = TextEditingController();
  late final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(height: 20),
             Text(
               'Hello!',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
               ),
             ),
             SizedBox(height: 5),
             Text(
               'Silahkan login sebelum memulai',
               style: TextStyle(
                 fontSize: 16
               ),
             ),
             SizedBox(height: 15),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Container( 
                 decoration: BoxDecoration(
                   color: Colors.grey.shade300,
                   border: Border.all(color: Colors.grey.shade300),
                   borderRadius: BorderRadius.circular(14)
                 ),
                 child: Padding(
                   padding: EdgeInsets.only(left:10),
                   child: TextField(
                     controller: _usernameController,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       labelText: 'Username',
                     ),
                   ),
                   ),
               ),
             ),
             SizedBox(height: 5),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Container( 
                 decoration: BoxDecoration(
                   color: Colors.grey.shade300,
                   border: Border.all(color: Colors.grey.shade300),
                   borderRadius: BorderRadius.circular(14)
                 ),
                 child: Padding(
                   padding: EdgeInsets.only(left:10),
                   child: TextField(
                     controller: _passwordController,
                     obscureText: true,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       labelText: 'Password',
                     ),
                   ),
                   ),
               ),
             ),
             SizedBox(height: 15),
             Column(
               children: [
                 Container(
                   width: MediaQuery.of(context).size.width / 1.5,
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
                      String text = "";
                      if (_usernameController.text.isEmpty||_passwordController.text.isEmpty) {
                        text = "Please input your username or password";
                      } 
                      else {
                        Navigator.popAndPushNamed(context, '/homeScreen', arguments: Users(_usernameController.text));
                      }
                      SnackBar snackBar = SnackBar(
                        content: Text(text));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text('Login'),
                  ),  
                 ),
                 
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       child: Text('Tidak punya akun?'),
                     ),
                     TextButton(
                       onPressed: (){
                         Navigator.pushNamed(context, '/registerScreen');
                       },
                       child: Text('Daftar disini.'),
                     )
                   ],
                 )
               ],
             ),
           ],
         ),
       ),
       ),
    );
  }
}