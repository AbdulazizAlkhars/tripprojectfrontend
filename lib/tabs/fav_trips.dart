import 'dart:math';
import 'package:flutter/material.dart';

import '../utils/data.dart';

class FavoriteTrips extends StatefulWidget {
  @override
  _FavoriteTripsState createState() => _FavoriteTripsState();
}

class _FavoriteTripsState extends State<FavoriteTrips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          Map datar = data[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(datar['story']),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.map,
                        size: 15,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        datar['places'],
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Ubuntu-Regular'),
                      ),
                      Spacer(),
                      // Text(
                      //   Random().nextInt(2000).toString(),
                      //   style: TextStyle(
                      //       fontSize: 12,
                      //       color: Colors.white,
                      //       fontFamily: 'Ubuntu-Regular'),
                      // ),
                      // SizedBox(width: 5),
                      // Text(
                      //   'likes',
                      //   style: TextStyle(
                      //     fontSize: 12,
                      //     color: Colors.white,
                      //     fontFamily: 'Ubuntu-Regular',
                      //   ),
                      // ),
                      SizedBox(width: 5),
                      InkWell(
                          // change the color of the icon when the user clicks on it
                          onTap: () {
                            print("Liked");
                          },
                          child: Container(
                            child: Icon(Icons.heart_broken,
                                size: 25, color: Colors.white),
                          )),
                      SizedBox(width: 5),
                      // Icon(Icons.share, size: 15, color: Colors.white)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
