import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class firstScreen extends StatelessWidget {
  const firstScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('assets/images/welcome.png',
            height: 350,)
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Welcome',
            style: GoogleFonts.oleoScriptSwashCaps(
              fontSize: 40,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.w500
            ),
            )
          ),
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(19),
                        )
                      )
                    ),
                    onPressed:() {
                    Navigator.popAndPushNamed(context, '/loginScreen');
                  },
                  child: Text('Get Started'),
                  )
        ],
      ),
    ]
    )
    );
  }
}