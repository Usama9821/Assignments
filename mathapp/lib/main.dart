import 'package:flutter/material.dart';
import 'package:mathapp/Screens/page1.dart';
import 'Screens/account.dart';
import 'Screens/home.dart';
import 'Screens/settings.dart';
import 'Screens/page1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
      AccountScreen.routeName: (BuildContext context) => Page1Screen(),
    },
  ));
}
