import 'package:flutter/material.dart';

void main() {
  runApp(const passApp());
}

class passApp extends StatelessWidget {
  const passApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
