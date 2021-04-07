import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'action_button.dart';
import 'constants.dart';
import 'signup.dart';
import 'homescreen.dart';
import 'login.dart';
import 'main.dart';

class ViewVoyage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //  leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("ALL  OPEN  VOYAGE  FILES"),
      ),

      /* body: new Stack(
        children: <Widget>[
          Container(
            child: ListView(children: [
              Column(
                children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.grey,
                          blurRadius: 14.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: RaisedButton(
                            color: kPrimaryColor1,

                            textColor: Colors.white,
                            elevation: 5.0,
                            splashColor: kPrimaryColor1,
                            padding: EdgeInsets.fromLTRB(65, 20, 65, 20),

                            // onPressed: () => print("Button Pressed"),
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              )
                              //do something
                            },

                            child: new Text("Voyage File 1"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ]),
          )
        ],
      ),*/
    );
  }

  Widget _myListView(BuildContext context) {
    // backing data

    final europeanCountries = [
      'Albania',
      'Andorra',
      'Armenia',
      'Austria',
      'Azerbaijan',
      'Belarus',
      'Belgium',
      'Bosnia and Herzegovina',
      'Bulgaria',
      'Croatia',
      'Cyprus',
      'Czech Republic',
      'Denmark',
      'Estonia',
      'Finland',
      'France',
      'Georgia',
      'Germany',
      'Greece',
      'Hungary',
      'Iceland',
      'Ireland',
      'Italy',
      'Kazakhstan',
      'Kosovo',
      'Latvia',
      'Liechtenstein',
      'Lithuania',
      'Luxembourg',
      'Macedonia',
      'Malta',
      'Moldova',
      'Monaco',
      'Montenegro',
      'Netherlands',
      'Norway',
      'Poland',
      'Portugal',
      'Romania',
      'Russia',
      'San Marino',
      'Serbia',
      'Slovakia',
      'Slovenia',
      'Spain',
      'Sweden',
      'Switzerland',
      'Turkey',
      'Ukraine',
      'United Kingdom',
      'Vatican City'
    ];

    return ListView.builder(
      itemCount: europeanCountries.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(europeanCountries[index]),
        );
      },
    );
  }
}
