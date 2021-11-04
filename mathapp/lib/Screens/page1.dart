import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
  static const String routeName = "/page1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1 to 5"),
      ),
      body: Container(
          child: Center(
        child: Text("1 to 5 Screen"),
      )),
    );
  }
}
