import 'package:flutter/material.dart';
import 'passgen.dart';

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
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Text('Simple'),
              Text('Hard'),
            ],
          ),
        ),
        appBar: AppBar(),
        body: passgenerator(),
      ),
    );
  }
}
