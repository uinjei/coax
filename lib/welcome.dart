import 'package:flutter/material.dart';
import 'package:coax/home.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  static const routeName = '/welcome';

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome To COAX'),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, HomePage.routeName, (route) => false);
              },
              child: Text('Start'),
            )
          ]
        )
      )
    );
  }
}
