import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labfinalproject/homepage.dart';
import 'package:labfinalproject/passgen.dart';

class hardpage extends StatelessWidget {
  const hardpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('HOME'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const passgenerator()),
                );
              },
            ),
            ListTile(
              title: Text('Homepage'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return homepage();
                }));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Hard Password Generator'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [Text('Homepage')],
        ),
      ),
    );
  }
}
