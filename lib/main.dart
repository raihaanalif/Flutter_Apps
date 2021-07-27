import 'package:flutter/material.dart';
import 'package:fp_dicoding2/screen/login.dart';
import 'package:fp_dicoding2/screen/mainpage.dart';
import 'package:fp_dicoding2/screen/register.dart';
import 'package:fp_dicoding2/screen/welcome.dart';
import 'package:fp_dicoding2/screen/home.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Try Login n Register",
      initialRoute: "/",
      routes: {
        "/": (context) => Welcome(),
        Register.routeName: (context) => Register(),
        Login.routeName: (context) => Login(),
        MainPage.routeName: (context) => MainPage(),
        Home.routeName: (context) => Home(),
      }));
}
