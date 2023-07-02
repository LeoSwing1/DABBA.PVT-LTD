import 'dart:async';
import 'package:dabba/pages/login_in_page.dart';
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
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LogInPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/spiceswall.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Opacity(
              opacity: 0.4,
              child: Container(
                color: Colors.black,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/DABBA_MAIN_OFFICIAL_TP.png'),
                    width: 400,
                  ),
                  SizedBox(height: 100),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SpinKitRing(
                      color: Color.fromARGB(255, 235, 7, 7),
                      size: 60.0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('Loading...'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
