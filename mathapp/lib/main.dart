import 'package:flutter/material.dart';
import 'package:mathapp/Screens/page1.dart';
import 'Screens/home.dart';
import 'Screens/page1.dart';
import 'Screens/page2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      Page2Screen.routeName: (BuildContext context) => Page2Screen(),
      Page1Screen.routeName: (BuildContext context) => Page1Screen(),
    },
  ));
}
