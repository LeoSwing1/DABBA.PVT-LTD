import 'package:flutter/material.dart';
import 'package:dabba/widgets/BottomNavBarWidget.dart';
import 'Edit_profile.dart';

class AccountOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Color.fromARGB(255, 239, 103, 6),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Edit Profile',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen())),
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text(
              'Edit Addresses',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.save),
            title: Text(
              'Saved Addresses',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text(
              'Contact Us',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text(
              'Previous Orders',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {},
          ),
          
        ],
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
