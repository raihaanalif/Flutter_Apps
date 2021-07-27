import 'package:flutter/material.dart';
import 'package:fp_dicoding2/const.dart';
import 'package:fp_dicoding2/screen/register.dart';
import 'package:fp_dicoding2/screen/home.dart';

class Login extends StatelessWidget {
  static const routeName = "/Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: ColorPalette.primaryColor,
          padding: EdgeInsets.only(left: 20.0, top: 110.0, right: 20.0),
          child: ListView(
            children: <Widget>[
              iconLogin(),
              titleDesc(),
              textField(),
              buildButton(context),
            ],
          ),
        ));
  }
}

Widget iconLogin() {
  return Image.asset(
    "assets/icon_app.png",
    width: 150.0,
    height: 150.0,
  );
}

Widget titleDesc() {
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(top: 16.0)),
      Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      )
    ],
  );
}

Widget textField() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Username",
          hintStyle: TextStyle(color: ColorPalette.hintColor),
        ),
        style: TextStyle(color: Colors.white),
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          hintText: "Password",
          hintStyle: TextStyle(color: ColorPalette.hintColor),
        ),
        style: TextStyle(color: Colors.white),
        obscureText: true,
        autofocus: false,
      )
    ],
  );
}

Widget buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      FlatButton(
        onPressed: (){
          Navigator.pushNamed(context, Home.routeName);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Login',
            style: TextStyle(color: ColorPalette.primaryColor),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        'or',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
      ),
      FlatButton(
        child: Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(context, Register.routeName);
        },
      ),
    ],
  );
}
