import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xylophone_app/homepage.dart';
import 'xylo.dart';
import 'homepage.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: XylophoneApp(),
    );
  }
}
