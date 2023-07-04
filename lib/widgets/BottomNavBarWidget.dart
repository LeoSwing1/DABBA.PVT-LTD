import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dabba/pages/Bottom_navigator_pages/home_opt.dart';
import 'package:dabba/pages/Bottom_navigator_pages/account_opt.dart';
import 'package:dabba/pages/Bottom_navigator_pages/track_opt.dart';
import 'package:dabba/pages/Bottom_navigator_pages/member_opt.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeOption()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MembershipOption()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TrackOrderScreen()),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AccountOption()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_membership),
          label: 'Members',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Track',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
          label: 'Account',
        ),
      ],
 currentIndex: _selectedIndex,
      selectedItemColor: Color.fromARGB(255, 35, 27, 27),
      unselectedItemColor: Color.fromARGB(255, 40, 35, 35),
      onTap: _onItemTapped,
    );
  }
}
  