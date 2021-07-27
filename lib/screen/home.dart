import 'package:flutter/material.dart';
import 'package:fp_dicoding2/screen/mainpage.dart';
import 'package:fp_dicoding2/const.dart';


class Home extends StatelessWidget {
  static const routeName = "/Home";
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
            homeButton(context),
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
        "Selamat Datang",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.center,
      )
    ],
  );
}

Widget homeButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, MainPage.routeName);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Daftar Kota',
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
    ],
  );
}
