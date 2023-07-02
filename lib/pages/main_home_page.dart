
import 'package:dabba/widgets/TopMenus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dabba/widgets/BottomNavBarWidget.dart';
import 'package:dabba/widgets/SearchWidget.dart';



class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 102, 4),
        elevation: 0,
        title: Text(
          "MENU",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {}
     ) ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            
            
          ],
      )),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
  
