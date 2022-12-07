import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 10)),
          CircleAvatar(
            backgroundImage: ExactAssetImage('images/yomanka.jpeg'),
            radius: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "What's on you mind?",
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.photo_library,
              color: Colors.green,
            ),
          )
        ],
      )
    ]));
  }
}
