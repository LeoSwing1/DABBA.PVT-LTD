import 'dart:async';
import 'package:dabba/login_in_page.dart';
import 'package:flutter/material.dart';
 import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context as BuildContext,
          MaterialPageRoute(
            builder: (context) => LogInPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 1, 1),
        body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/DABBA_OFFICIAL_LOGO.png'),
            width: 500,
          ),
          SizedBox(
            height: 50,
          ),
          SpinKitFadingCircle(
            color: Colors.white,
            size: 60.0,
          )
        ],
      ),
     ) ));
  }
}
