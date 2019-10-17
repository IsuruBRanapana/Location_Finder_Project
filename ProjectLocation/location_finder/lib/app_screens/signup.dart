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

  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController conPasswordController=TextEditingController();

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
            nameFieldSet(firstNameController, 'Enter the First Name', 'First Name','John'),

            // Last Name
            nameFieldSet(lastNameController, 'Enter the Last Name', 'Last Name','Perera'),
            //E mail
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
              child: TextFormField(
                controller: emailController,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter the E mail Address";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                style: textStyle,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: Theme.of(context).textTheme.body1,
                  errorStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 15.0,
                  ),
                  hintText: "Johnperera@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),

            //Phone Number
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
              child: TextFormField(
                controller: phoneNumberController,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter Your Phone Number";
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
                style: textStyle,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: Theme.of(context).textTheme.body1,
                  errorStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 15.0,
                  ),
                  hintText: "0123456789",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),

            //Password
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
              child: TextFormField(
                controller: passwordController,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter the Password";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                style: textStyle,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: Theme.of(context).textTheme.body1,
                  errorStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 15.0,
                  ),
                  hintText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),

            //confirm Password
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
              child: TextFormField(
                controller: conPasswordController,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter the Password";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                style: textStyle,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  labelStyle: Theme.of(context).textTheme.body1,
                  errorStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 15.0,
                  ),
                  hintText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                'Submit'
              ),
              onPressed: (){
                setState(() {
                  if(_formKey.currentState.validate()){
                    
                  }
                });
              },
            )
          ],
        ),
      ),
    );

  }


  Widget nameFieldSet(TextEditingController txtController,String retEmpty,String lblText,[String hintTxt]){
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
      child: TextFormField(
        controller: txtController,
        validator: (String value) {
          if (value.isEmpty) {
            return retEmpty;
          }
          return null;
        },
        keyboardType: TextInputType.text,
        style: textStyle,
        decoration: InputDecoration(
          labelText: lblText,
          labelStyle: Theme.of(context).textTheme.body1,
          errorStyle: TextStyle(
            color: Colors.redAccent,
            fontSize: 15.0,
          ),
          hintText: hintTxt,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
