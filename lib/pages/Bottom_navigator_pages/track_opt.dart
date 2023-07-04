import 'package:flutter/material.dart';

import '../../widgets/BottomNavBarWidget.dart';

class TrackOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Order'),
        backgroundColor: Color.fromARGB(255, 239, 103, 6),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Placed Orders',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.local_shipping), 
              title: Text('Order 1'),
              onTap: () {
                Navigator.pushNamed(context, '/order_tracking_details');
              },
            ),
            ListTile(
              leading: Icon(Icons.local_shipping), 
              title: Text('Order 2'),
              onTap: () {
                Navigator.pushNamed(context, '/order_tracking_details');
              },
            ),
          ],
        ),
      ),
            bottomNavigationBar: BottomNavBarWidget(),

    );
  }
}
