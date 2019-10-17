import 'package:flutter/material.dart';
import 'app_screens/signup.dart';
void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Location Finder",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SignUp(),
    );
  }
}