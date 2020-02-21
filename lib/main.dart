import 'package:flutter/material.dart';
import 'welcome.dart';
import 'home.dart';
import 'instruction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: '/welcome',
      routes: <String, WidgetBuilder>{
        WelcomePage.routeName: (context) => WelcomePage(),
        HomePage.routeName: (context) => HomePage(),
        InstructionPage.routeName: (context) => InstructionPage()
      },
    );
  }
}
