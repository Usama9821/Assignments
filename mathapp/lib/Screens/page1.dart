import 'dart:math';
import 'results.dart';
import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
  static const String routeName = "/page1";
  var value1 = '';
  var value2 = '';
  // var _controller2 = TextEditingController();
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
              // TextFormField(
              //   controller: _controller1,
              //   decoration: const InputDecoration(
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide(width: 3),
              //         borderRadius: const BorderRadius.all(
              //           const Radius.circular(30),
              //         ),
              //       ),
              //       labelText: ''),
              //   maxLength: 1,
              // ),
              TextField(
                autofocus: false,
                keyboardType: TextInputType.name,
                onChanged: (text) {
                  value1 = text;
                },
              ),
              Center(child: Text("+")),
              // TextFormField(
              //   controller: _controller2,
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide(width: 3),
              //       borderRadius: const BorderRadius.all(
              //         const Radius.circular(30),
              //       ),
              //     ),
              //   ),
              //   maxLength: 1,
              //   keyboardType: TextInputType.number,
              // ),
              TextField(
                autofocus: false,
                keyboardType: TextInputType.name,
                onChanged: (text) {
                  value2 = text;
                },
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
                          String c1 = value1 + value2;
                          if (c1 == max) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext) {
                                  return results(
                                    c1: c1,
                                  );
                                },
                              ),
                            );
                            //Navigator.push(context, MaterialPageRoute(builder: BuildContext){return results(sum, sum)},)
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
