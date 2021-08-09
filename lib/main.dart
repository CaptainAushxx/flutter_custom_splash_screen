import 'package:flutter/material.dart';
import 'dart:async';

import 'main_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'custom splash screen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      image: 'assets/images/fox.png',
      backgroungColor: Colors.white,
      circularProgressIndicatorColor: Colors.blue,
      primaryText: 'Custom Splash Screen',
      primaryTextColor: Colors.black,
      secondaryText: 'marathonfox.com',
      secondaryTextColor: Colors.black,
    );
  }
}
