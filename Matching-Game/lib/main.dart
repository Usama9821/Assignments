import 'package:flutter/material.dart';
import 'NumberGame.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PressStart',
      ),
      home: NumberGame(),
    );
  }
}
