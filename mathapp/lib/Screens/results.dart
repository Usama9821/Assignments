import 'package:flutter/material.dart';
import 'page1.dart';

class Page2Screen extends StatelessWidget {
  var sum = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        child: Center(
          child: Text(sum),
        ),
      ),
    );
  }
}
