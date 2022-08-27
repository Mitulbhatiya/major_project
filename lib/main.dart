import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:major_project/pages/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.dark
      )
  );
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MetaWidget',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey),
          scaffoldBackgroundColor: Colors.white,
        ),
        home: MyApp(),
      ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SplashScreen(),
    );
  }
}
