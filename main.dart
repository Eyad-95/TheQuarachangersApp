import 'package:flutter/material.dart';
import 'package:hospitals_around/screens/choose_screen.dart';
import 'package:hospitals_around/screens/home_page.dart';
import 'package:hospitals_around/screens/login.dart';
import 'package:hospitals_around/screens/sign_up.dart';

import 'screens/Welcoming_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomingScreen(),
      routes: {
        ChooseScreen.routeName: (ctx) => ChooseScreen(),
        Login.routeName: (ctx) => Login(),
        SignUpPage.routeName:(ctx) => SignUpPage(),
        HomePage.routeName:(ctx) => HomePage(),
      },
    );
  }
}

