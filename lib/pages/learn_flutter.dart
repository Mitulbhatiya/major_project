import 'package:flutter/material.dart';

import 'home_screen.dart';


class Learn_Flutter extends StatefulWidget {
  const Learn_Flutter({Key? key}) : super(key: key);

  @override
  _Learn_FlutterState createState() => _Learn_FlutterState();
}

class _Learn_FlutterState extends State<Learn_Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter"),
        actions: [IconButton(icon:Icon(Icons.clear),onPressed: _triggerExitPageDialog)],
      ),
    );
  }
  void _triggerExitPageDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Return to home screen?"),
          content: Text("This action cannot be undone"),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel")),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
