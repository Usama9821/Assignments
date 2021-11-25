import 'package:flutter/material.dart';
import 'homepage.dart';
import 'numberscreen.dart';

void main() => runApp(Tablecalc());

class Tablecalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: NumberScreen(),
    );
  }
}
