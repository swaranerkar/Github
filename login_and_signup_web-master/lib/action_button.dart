import 'package:flutter/material.dart';
import 'package:login_and_signup_web/constants.dart';
import 'package:login_and_signup_web/signup.dart';

Widget actionButton(String text) {
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: kPrimaryColor2.withOpacity(0.2),
          spreadRadius: 4,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,

          //fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
