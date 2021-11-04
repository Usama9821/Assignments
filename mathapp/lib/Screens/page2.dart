import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
  static const String routeName = "/page2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1 to 10"),
      ),
      body: Container(
          child: Center(
        child: Text("1 to 10 Screen"),
      )),
    );
  }
}
