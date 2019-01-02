import 'package:flutter/material.dart';

import 'pages/auth/login.dart';
import 'pages/auth/register.dart';
import 'pages/home.dart';
import 'pages/controller/controller.dart';

class MyApp extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.greenAccent
        ),
        title: 'Soccer Star',
        routes: {
          '/': (BuildContext context) => LoginPage(),
          'registerPage': (BuildContext context) => RegisterPage(),
          'homePage': (BuildContext context) => HomePage(),
          'controllerPage': (BuildContext context) => ControllerPage()
        },
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('Soccer'),
        //   ),
        //   body: Center(
        //     child: Text('my Body')
        //   ),
        // ),
      );
    }
}