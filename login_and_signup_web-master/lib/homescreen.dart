import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_and_signup_web/ViewVoyageFile.dart';
import 'constants.dart';
import 'action_button.dart';
import 'login.dart';
import 'signup.dart';
import 'main.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor3,
     
      body: new Stack(children: <Widget>[
        Container(
          child: FractionallySizedBox(
            heightFactor: 0.7,
            widthFactor: 1.0,
            //for full screen set heightFactor: 1.0,widthFactor: 1.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/shipimage.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Stack(children: [
            Align(
              alignment: FractionalOffset(0.3, 0.9),
              // alignment: Alignment.bottomLeft.add(other),

              child: RaisedButton(
                //margin: EdgeInsets.only(top: 10.0),
                color: kPrimaryColor2,

                textColor: Colors.white,
                elevation: 5.0,
                splashColor: kPrimaryColor1,
                padding: EdgeInsets.fromLTRB(45, 20, 45, 20),

                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                // onPressed: () => print("Button Pressed"),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  )
                  //do something
                },

                child: new Text("VIEW CLOSED VOYAGE FILES"),
              ),
            ),
            Align(
              //alignment: Alignment.bottomRight,
              alignment: FractionalOffset(0.7, 0.9),
              child: RaisedButton(
                color: kPrimaryColor2,

                textColor: Colors.white,
                elevation: 5.0,
                splashColor: kPrimaryColor1,
                padding: EdgeInsets.fromLTRB(45, 20, 45, 20),

                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                // onPressed: () => print("Button Pressed"),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewVoyage()),
                  )
                  //do something
                },

                child: new Text("VIEW OPEN VOYAGE FILES"),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
