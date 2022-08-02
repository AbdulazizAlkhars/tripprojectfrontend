import 'package:flutter/material.dart';

import '../profile/activities.dart';
import '../profile/myfriends.dart';
import '../profile/myprofile.dart';
import '../profile/travels.dart';
// ignore_for_file: prefer_const_constructors

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late PageController _pageController;
  int _page = 0;
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'Ubuntu-Regular',
            fontSize: 15,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      navigationTapped(0);
                    });
                    selectItem(0);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: 0 == selectedItem ? Colors.red : Colors.grey[300],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.verified_user,
                        color: 0 == selectedItem ? Colors.white : Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      navigationTapped(1);
                    });
                    selectItem(1);
                    print(_page);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: 1 == selectedItem ? Colors.red : Colors.grey[300],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.verified_user,
                        color: 1 == selectedItem ? Colors.white : Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      navigationTapped(2);
                    });
                    selectItem(2);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: 2 == selectedItem ? Colors.red : Colors.grey[300],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.archive,
                        color: 2 == selectedItem ? Colors.white : Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      navigationTapped(3);
                    });
                    selectItem(3);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            3 == selectedItem ? Colors.red : Colors.grey[300],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.lock_clock,
                          color:
                              3 == selectedItem ? Colors.white : Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: onPageChanged,
                children: [
                  MyProfile(),
                  MyFriends(),
                  Activity(),
                  Travels(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  selectItem(page) {
    setState(() {
      selectedItem = page;
    });
  }
}
