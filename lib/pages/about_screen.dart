import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_screen.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  List<String> contributors = [
    "Mitul Bhatiya",
    "Anurag Bhanderi"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        actions: [IconButton(icon:Icon(Icons.clear),onPressed: (){Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );})],

      ),
      body: ListView(
        children: <Widget>[
          // Image.asset('images/screenshot.png'),
          SizedBox(height: 20,),
          Center(
            child: Text(
              "MetaWidget",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FittedBox(
                child: Text(
                  "Experiment with Flutter widgets on your phone!",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                  '''MetaWidget allows you to create Flutter layouts using a wide and constantly growing range of Flutter widgets.
              \nBuild out an idea you had instantly, try out something you've never tried before or just use it as a tool for Flutter layout demonstrations. 
              \nNo login. Free to use.'''),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Developers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          for (var contributor in contributors)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
              child: Text(contributor),
            ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Learn Dart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InkWell(
                    child: Text(
                      "Documentation",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      _launchURL();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _launchURL() async {
    final url = Uri(scheme: 'http',host: 'https://dart.dev/guides');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
