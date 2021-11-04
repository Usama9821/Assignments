import 'dart:math';

import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
  static const String routeName = "/page1";
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();
  int max = Random().nextInt(9) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1 to 5"),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            Center(
              child: Text("1 to 5 Screen"),
            ),
            TextFormField(
              controller: _controller1,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30),
                    ),
                  ),
                  labelText: ''),
              maxLength: 1,
            ),
            Center(child: Text("+")),
            TextFormField(
              controller: _controller2,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30),
                      )),
                  labelText: ''),
              maxLength: 1,
              keyboardType: TextInputType.number,
            ),
            Text("$max"),
            Divider(
              //color: Colors.black,
              height: 15,
              thickness: 2,
            ),
          ],
        ),
      )),
    );
  }
}
