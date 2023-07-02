import 'dart:async';
import 'package:dabba/pages/main_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LodingHomeSplash extends StatefulWidget {
  @override
  State<LodingHomeSplash> createState() => _LodingHomeSplashState();
}

class _LodingHomeSplashState extends State<LodingHomeSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainHomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/DABBA_MAIN_OFFICIAL_TP.png'),
                width: 400,
              ),
              SizedBox(height: 100),
              Text('GOOD TO SEE YOU!'),
              
              SizedBox(height: 16),
              SpinKitRing(
                color: Color.fromARGB(255, 235, 7, 7),
                size: 60.0,
              ),
              SizedBox(height: 15),
              Text('loading...'),
            ],
          ),
        ),
      ),
    );
  }
}
