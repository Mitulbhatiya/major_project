import 'package:flutter/material.dart';

import 'detailPage.dart';

class Learn_Flutter extends StatefulWidget {
  const Learn_Flutter({Key? key}) : super(key: key);

  @override
  _Learn_FlutterState createState() => _Learn_FlutterState();
}

class _Learn_FlutterState extends State<Learn_Flutter> {
  List main = [
    'Flutter Development Course',
    'Books',
    'Article',
    'What to do next?'
  ];

  List sub = [
    'Beginner Level',
    'Intermediate Level',
    'Advance Level',
    'Advance Level'
  ];

  List icon = [
    Icon(Icons.laptop,color: Colors.orange,),
    Icon(Icons.book,color: Colors.brown,),
    Icon(Icons.article,color: Colors.green,),
    Icon(Icons.error,color: Colors.blue,)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'home');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Learn Flutter",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/home_bg.png'), fit: BoxFit.cover),
            ),
          ),
          ListView.builder(
              itemCount: main.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return DetailPage();
                    }));
                  },
                  tileColor: Colors.green,
                  title: Text("${main[index]}"),
                  leading: icon[index],
                  subtitle: Text("${sub[index]}"),
                );
              })
        ],
      ),
    );
  }
  // void _triggerExitPageDialog() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text("Return to home screen?"),
  //         content: Text("This action cannot be undone"),
  //         actions: <Widget>[
  //           ElevatedButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: Text("Cancel")),
  //           ElevatedButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //               Navigator.pushReplacement(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => HomeScreen(),
  //                 ),
  //               );
  //             },
  //             child: Text("OK"),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
