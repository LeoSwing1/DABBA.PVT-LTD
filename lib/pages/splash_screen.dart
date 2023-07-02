import 'dart:async';
import 'package:dabba/pages/login_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 15), () {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values); // Enable system UI overlays
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LogInPage(),
        ),
      );
    });
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []); // Disable system UI overlays
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set status bar color to transparent
    ));
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
            Container(
              color: Colors.black.withOpacity(0.9),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ Padding(
                    padding: EdgeInsets.only(top: 200),
                  child:Image(
                    image: AssetImage('assets/images/DABBA_MAIN_OFFICIAL_TP.png'),
                    width: 400,
                  )),
                  SizedBox(height: 100),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SpinKitRing(
                      color: Color.fromARGB(255, 235, 7, 7),
                      size: 60.0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('Loading...',
                    style: TextStyle(color: Colors.white), // Set the text color to white
               ) ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
