import 'package:flutter/material.dart';

class TopMenus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          TopMenuTiles(name: "Dal Rice", imageUrl: 'assets/images/dalrice.jpg'),
          TopMenuTiles(name: "Sweet", imageUrl: 'assets/images/gujiya.jpg'),
          TopMenuTiles(name: "Kichadi", imageUrl: 'assets/images/kichadri.jpg'),
          TopMenuTiles(
              name: "Mattar Paneer", imageUrl: 'assets/images/matarpaneer.jpg'),
          TopMenuTiles(
              name: "Sahi Paneer", imageUrl: 'assets/images/sahipaneer.jpg'),
        ],
      ),
    );
  }
}

class TopMenuTiles extends StatelessWidget {
  final String name;
  final String imageUrl;

  const TopMenuTiles({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 231, 203, 200),
                  blurRadius: 1.0,
                  offset: Offset(0.1, 0.5),
                ),
              ],
            ),
            child: Card(
              color: Color.fromARGB(255, 6, 6, 6),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 150,
                height: 110,
                child: Center(
                  child: Image.asset(
                    imageUrl,
                    width: 500,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color(0xFF6e6e71),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              //  fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
