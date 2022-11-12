import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:major_project/pages/loginpage.dart';


import 'home_screen.dart';

/// Splash screen
/// TODO: Move splash screen to Android side to initialise before Flutter app starts
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((val) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  final String assestname = 'images/image3.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: SvgPicture.asset(assestname,),
                )
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Meta",style: TextStyle(color: Colors.blue, fontSize: 36.0),),
              Text("Widget",style: TextStyle(color: Colors.blueGrey, fontSize: 36.0),),
            ],
          ),
          Divider(color: Colors.transparent,),
          Divider(color: Colors.transparent,),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}
