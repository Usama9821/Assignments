import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labfinalproject/homepage.dart';
import 'package:labfinalproject/hard.dart';

class passgenerator extends StatelessWidget {
  const passgenerator({Key? key}) : super(key: key);
  final controller = TextEditingController();

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
              title: Text('HARD'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const hardpage()),
                );
              },
            ),
            ListTile(
              title: Text('HOME'),
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
        title: const Text('Simple Password Generator'),
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
