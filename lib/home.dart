import 'package:flutter/material.dart';
import 'package:i_hate_flutter/first.dart';
import 'package:i_hate_flutter/five.dart';
import 'package:i_hate_flutter/four.dart';
import 'package:i_hate_flutter/second.dart';
import 'package:i_hate_flutter/six.dart';
import 'package:i_hate_flutter/third.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
                icon: Icon(
              Icons.home,
              color: Colors.grey[600],
            )),
            Tab(
                icon: Icon(
              Icons.people_alt_outlined,
              color: Colors.grey[600],
            )),
            Tab(
                icon: Icon(
              Icons.ondemand_video_outlined,
              color: Colors.grey[600],
            )),
            Tab(
                icon: Icon(
              Icons.storefront_outlined,
              color: Colors.grey[600],
            )),
            Tab(
                icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.grey[600],
            )),
            Tab(
                icon: Icon(
              Icons.menu_outlined,
              color: Colors.grey[600],
            )),
          ]),
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            "Facebook",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: -1.2),
          ),
          actions: [
            Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.grey[200], shape: BoxShape.circle),
                child: IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30,
                  color: Colors.black,
                  onPressed: () {},
                )),
            Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.grey[200], shape: BoxShape.circle),
                child: IconButton(
                    icon: Icon(Icons.facebook),
                    iconSize: 30,
                    color: Colors.black,
                    onPressed: () => print("facebook")))
          ],
        ),
        body: TabBarView(
          children: [
            Firstscreen(),
            Secondscreen(),
            Thirdscreen(),
            Fourscreen(),
            Fivescreen(),
            Sixscreen()
          ],
        ),
      ),
    );
  }
}
