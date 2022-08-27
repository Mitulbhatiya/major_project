import 'package:flutter/material.dart';
import 'package:major_project/pages/widget_structure_screen.dart';


import 'about_screen.dart';
import 'learn_flutter.dart';

/// First page to see after splash screen.
/// Keep this page as entry for main program, saved templates, etc.
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon:Icon(Icons.info,size: 30,color: Colors.blueGrey,),
            onPressed:  (){Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => AboutScreen()));}
          ),
          SizedBox(
            width: 20,
          ),

        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/home_bg.png'), fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildTitle(),
              _buildButtons(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Meta",
          style: TextStyle(color: Colors.blue, fontSize: 36.0),
        ),
        Text(
          "Widget",
          style: TextStyle(color: Colors.blueGrey, fontSize: 36.0),
        )
      ],
    );
  }

  Widget _buildButtons() {
    return Column(
      children: <Widget>[
        ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Learn Flutter",
              style: TextStyle(color: Colors.white),
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
              shadowColor: Colors.black,
              elevation: 5),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Learn_Flutter()));
          },
        ),
        SizedBox(
          height: 8.0,
        ),
        ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Start Practice",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
              shadowColor: Colors.black,
              elevation: 5),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => WidgetStructureScreen()));
          },
        ),
        SizedBox(
          height: 8.0,
        ),

        // ElevatedButton(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text(
        //       "About",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.blueGrey,
        //   ),
        //   onPressed: () {
        //     Navigator.pushReplacement(context,
        //         MaterialPageRoute(builder: (context) => AboutScreen()));
        //   },
        // ),
        // SizedBox(
        //   width: 120.0,
        //   child: FlatButton(
        //     color: Colors.blue,
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => AboutScreen()));
        //     },
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "About",
        //         style: TextStyle(color: Colors.white, fontSize: 18.0),
        //       ),
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: 8.0,
        // ),
      ],
    );
  }
}
