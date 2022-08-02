import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/profile.dart';

AppBar header(context) {
  return AppBar(
    elevation: 0.0,
    leading: Container(
      padding: const EdgeInsets.only(top: 10.0),
      child: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () => print("Hamburger Button Pressed"),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Container(
            height: 35,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  SizedBox(width: 3),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search...',
                        hintStyle: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Profile(),
                ),
              );
            },
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/story/cm1.jpeg'),
            ),
          ),
        ],
      ),
    ),
  );
}
