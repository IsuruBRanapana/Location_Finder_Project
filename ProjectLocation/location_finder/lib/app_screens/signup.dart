import 'package:flutter/material.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpState();
  }
}

class SignUpState extends State<SignUp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          textDirection: TextDirection.ltr,
        ),
      ),
      body: signUpForm(),
    );
  }

  Widget signUpForm(){
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          
        ],
      ),
    );
  }
}