import 'package:flutter/material.dart';

/// Displays the result of the user's selection of widgets
/// TODO: Better error handling
class ResultScreen extends StatefulWidget {
  final Widget widget;

  ResultScreen(this.widget);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: widget.widget,
        ),
        SafeArea(
          child: Container(

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                child: Icon(
                  Icons.clear,
                  size: 30.0,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
