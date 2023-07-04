
import 'package:dabba/widgets/TopMenus.dart';
import 'package:flutter/material.dart';
import 'package:dabba/widgets/BottomNavBarWidget.dart';
import 'package:dabba/widgets/SearchWidget.dart';



class HomeOption extends StatefulWidget {
  const HomeOption({Key? key}) : super(key: key);

  @override
  State<HomeOption> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<HomeOption> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 99, 10),
        elevation: 0,
        title: Text(
          "MENU",
          style: TextStyle(
              color: Color.fromARGB(255, 244, 221, 221),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color.fromARGB(255, 247, 226, 226),
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
  
