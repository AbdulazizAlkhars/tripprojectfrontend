import 'package:flutter/material.dart';
import 'package:tripfronend/profile/editprofile.dart';

import '../profile/activities.dart';
import '../profile/myfriends.dart';
import '../profile/myprofile.dart';
import '../profile/travels.dart';
// ignore_for_file: prefer_const_constructors

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({Key? key}) : super(key: key);

  @override
  _EditMyProfileState createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit My Profile',
          style: TextStyle(
            fontFamily: 'Ubuntu-Regular',
            fontSize: 15,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                // controller: _pageController,
                // onPageChanged: onPageChanged,
                children: [
                  EditProfile(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
