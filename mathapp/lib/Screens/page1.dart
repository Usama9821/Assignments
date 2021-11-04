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
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 125, top: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black54,
                          onPrimary: Colors.white,
                          minimumSize: Size(100, 50),
                        ),
                        child: Text(' Submit '),
                        onPressed: () {
                          var value1 = _controller1.text;
                          var value2 = _controller2.text;
                          var sum = value1 + value2;
                          if (sum == max) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (BuildContext) {
                              return result(sum: c1);
                            },
                          ),
                          } else {}
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
