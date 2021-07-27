import 'package:flutter/material.dart';
import 'package:fp_dicoding2/const.dart';
import 'package:fp_dicoding2/screen/register.dart';
import 'package:fp_dicoding2/screen/login.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.only(left: 20.0, top: 150.0, right: 20.0),
        child: ListView(
          children: <Widget>[
            iconLogo(),
            textDesc(),
            welcomeButton(context),
          ],
        ),
      ),
    );
  }
}

Widget iconLogo() {
  return Image.asset(
    "assets/icon_app.png",
    width: 150.0,
    height: 150.0,
  );
}

Widget textDesc() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        "Corona Track",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 12.0)),
      Text(
        "Cek zona daerahmu sebelum berpergian",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
        textAlign: TextAlign.center,
      )
    ],
  );
}

Widget welcomeButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, Login.routeName);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Sign In',
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
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, Register.routeName);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Sign Up',
            style: TextStyle(color: ColorPalette.primaryColor),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    ],
  );
}
