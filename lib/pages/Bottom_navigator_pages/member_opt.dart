import 'package:flutter/material.dart';

import '../../widgets/BottomNavBarWidget.dart';

class MembershipOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membership'),
       backgroundColor: Color.fromARGB(255, 239, 103, 6),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Become a Family Member',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Enjoy homemade food without the hassle of ordering daily.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              child: Text('Join Now'),
              onPressed: () {
                Navigator.pushNamed(context, '/membership_signup');
              },
            ),
          ],
        ),
      ),
            bottomNavigationBar: BottomNavBarWidget(),

    );
  }
}
