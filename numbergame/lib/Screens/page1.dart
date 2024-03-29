import 'dart:math';
import 'results.dart';
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
                    ),
                  ),
                ),
                maxLength: 1,
                keyboardType: TextInputType.number,
              ),
              Text("$max"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black54,
                  onPrimary: Colors.white,
                  minimumSize: Size(100, 50),
                ),
                child: Text(' Submit '),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
