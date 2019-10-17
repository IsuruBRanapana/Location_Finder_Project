import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  var _formKey = GlobalKey<FormState>();
  double _minimumPadding=5.0;

  TextEditingController first_name_controller=TextEditingController();
  TextEditingController last_name_controller=TextEditingController();
  TextEditingController email_controller=TextEditingController();
  TextEditingController phone_number_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();
  TextEditingController con_password_controller=TextEditingController();

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

  Widget signUpForm() {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(_minimumPadding*3),
        child: ListView(
          children: <Widget>[

            //First Name
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
              child: TextFormField(
                controller: first_name_controller,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter the First Name";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                style: textStyle,
                decoration: InputDecoration(
                    labelText: "Rate of Interest",
                    labelStyle: textStyle,
                    errorStyle: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 15.0,
                    ),
                    hintText: "In percent",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                    ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
